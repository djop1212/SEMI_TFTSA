package com.tftsa.itys.board.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.tftsa.itys.board.model.service.BoardService;
import com.tftsa.itys.board.model.service.ReplyService;
import com.tftsa.itys.board.model.vo.Board;
import com.tftsa.itys.board.model.vo.Reply;
import com.tftsa.itys.common.Paging;


@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	ReplyService replyService;

	// 게시글 목록 보이기
	@RequestMapping("blist.do")
	public ModelAndView boardListMethod(ModelAndView mv, 
			@RequestParam(name = "page", required = false) String page) {
		
		int currentPage = 1;
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 페이징 처리
		int limit = 10; 
		
		// 페이지 계산을 위해 총 목록갯수 조회
		int listCount = boardService.selectListCount();
		
		// 페이지 수 계산
		int maxPage = (int) ((double) listCount / limit + 0.9);
		int startPage = (int) ((double) currentPage / 10 + 0.9);
		int endPage = startPage + 10 - 1;  
		if (maxPage < endPage) { 
			endPage = maxPage;
		}

		// 쿼리문에 전달할 현재 페이지에 출력할 목록의 첫행과 끝행
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		Paging paging = new Paging(startRow, endRow);

		ArrayList<Board> list = boardService.selectList(paging);

		if (list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("listCount", listCount);
			mv.addObject("maxPage", maxPage);
			mv.addObject("currentPage", currentPage);
			mv.addObject("startPage", startPage);
			mv.addObject("endPage", endPage);
			mv.addObject("limit", limit);
			
			mv.setViewName("board/boardListView");
		} else {
			mv.addObject("message", currentPage + "페이지 목록 조회 실패.");
			mv.setViewName("common/error");
		}

		return mv;
	}


	// 게시글쓰기 페이지로 이동
	@RequestMapping("bwform.do")
	public String moveBoardWriteForm() {
		return "board/boardWriteForm";
	}

	// 파일업로드 기능이 있는 게시 원글 등록 처리용
	@RequestMapping(value = "binsert.do", method = RequestMethod.POST)
	public String boardInsertMethod(Board board, HttpServletRequest request, Model model,
			@RequestParam(name = "upfile", required = false) MultipartFile mfile) {
		
		// 업로드된 파일 저장 폴더 지정하기
		String savePath = request.getSession().getServletContext().getRealPath("resources/board_upfiles");

		// 첨부파일이 있을때만 업로드된 파일을 지정 폴더로 옮기기
		if (!mfile.isEmpty()) {  
			String fileName = mfile.getOriginalFilename();
			if (fileName != null && fileName.length() > 0) {
				try {
					mfile.transferTo(new File(savePath + "\\" + fileName));

					// 바꿀 파일명에 대한 문자열 만들기
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

					// 변경할 파일명 만들기
					String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis()));
					// 원본 파일의 확장자를 추출해서, 변경 파일명에 붙여줌
					renameFileName += "." + fileName.substring(fileName.lastIndexOf(".") + 1);

					// 파일명 바꾸기 실행함 : java.io.File 을 이용함
					File originFile = new File(savePath + "\\" + fileName);
					File renameFile = new File(savePath + "\\" + renameFileName);

					if (!originFile.renameTo(renameFile)) {

						FileInputStream fin = new FileInputStream(originFile);
						FileOutputStream fout = new FileOutputStream(renameFile);

						int data = -1;
						byte[] buffer = new byte[1024];

						while ((data = fin.read(buffer, 0, buffer.length)) != -1) {
							fout.write(buffer, 0, buffer.length);
						}

						fin.close();
						fout.close();
						originFile.delete(); 
					} 

					board.setBoard_rename_filename(renameFileName);
				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("message", "전송파일 저장 실패.");
					return "common/error";
				}

			} // 업로드된 파일이 있다면 

			board.setBoard_original_filename(mfile.getOriginalFilename());
			logger.info("binsert.do : " + board);
		} // 첨부 파일 있을 때

		if (boardService.insertOriginBoard(board) > 0) {
			return "redirect:blist.do";
		} else {
			model.addAttribute("message", "게시 원글 등록 실패.");
			return "common/error";
		}
	}
	
	//게시글 상세보기
	@RequestMapping("bdetail.do")
	public ModelAndView boardDetailMethod(ModelAndView mv, 
			@RequestParam("board_no") int board_no, @RequestParam("page") int page) {

		// 조회수 1 증가 처리
		boardService.updateAddReadCount(board_no);

		// 해당 게시글 조회
		Board board = boardService.selectBoard(board_no);

		if (board != null) {
			mv.addObject("board", board);
			mv.addObject("currentPage", page);
			
			//게시글 밑에 댓글 보이는 부분
			List<Reply> replyList = replyService.readReply(board.getBoard_no());
			mv.addObject("replyList", replyList);
			
			mv.setViewName("board/boardDetailView");
		} else {
			mv.addObject("message", board_no + "번 게시글 조회 실패.");
			mv.setViewName("common/error");
		}

		return mv;
	}

	// 첨부파일 다운로드 요청 처리용
	@RequestMapping("bfdown.do")
	public ModelAndView fileDownMethod(HttpServletRequest request, 
			@RequestParam("ofile") String originFileName,
			@RequestParam("rfile") String renameFileName, ModelAndView mv) {

		String savePath = request.getSession().getServletContext().getRealPath("resources/board_upfiles");
		// 저장 폴더에서 파일 읽기 위해 경로 포함
		File renameFile = new File(savePath + "\\" + renameFileName);
		// response 에 다운 파일명 등록용 (경로 제외)
		File originalFile = new File(originFileName);

		mv.setViewName("filedown2");
		mv.addObject("renameFile", renameFile);
		mv.addObject("originalFile", originalFile);

		return mv;
	}

	// 댓글달기 페이지로 이동
	@RequestMapping("breplyform.do")
	public String moveReplyForm(@RequestParam("bnum") int origin_num, 
			@RequestParam("page") int currentPage, Model model) {

		model.addAttribute("board_no", origin_num);
		model.addAttribute("currentPage", currentPage);

		return "board/boardReplyForm";
	}

	@RequestMapping(value = "breply.do", method = RequestMethod.POST)
	public String replyInsertMethod(Reply reply, @RequestParam("page") int page, Model model) {
		logger.info("reply Write");
		
		replyService.writeReply(reply);
		
		model.addAttribute("board_no", reply.getBoard_no());
		model.addAttribute("com_no", reply.getCom_no());
		model.addAttribute("com_writer", reply.getCom_writer());
		
		return "redirect:/bdetail.do?page=" + page;
	}
	
	// 게시글 삭제
	@RequestMapping("bdelete.do")
	public String boardDeleteMethod(Board board, HttpServletRequest request, Model model) {
		if (boardService.deleteBoard(board) > 0) {
			// 글삭제 성공하면 저장폴더에 첨부파일도 삭제 처리
			if (board.getBoard_rename_filename() != null) {
				new File(request.getSession().getServletContext().getRealPath("resources/board_upfiles") + "\\"
						+ board.getBoard_rename_filename()).delete();
			}

			return "redirect:blist.do?page=1";
		} else {
			model.addAttribute("message", board.getBoard_no() + "번 글 삭제 실패.");
			return "common/error";
		}
	}

	// 게시글 수정페이지로 이동 처리용
	@RequestMapping("bupview.do")
	public String moveBoardUpdateView(@RequestParam("board_no") int board_no, 
			@RequestParam("page") int currentPage,
			Model model) {
		Board board = boardService.selectBoard(board_no);

		if (board != null) {
			model.addAttribute("board", board);
			model.addAttribute("page", currentPage);
			return "board/boardUpdateView";
		} else {
			model.addAttribute("message", board_no + "번 글 수정페이지로 이동 실패.");
			return "common/error";
		}
	}
	
	// 게시 원글 수정 요청 처리용
	@RequestMapping(value = "boriginup.do", method = RequestMethod.POST)
	public String boardUpdateMethod(Board origin, 
			HttpServletRequest request, Model model,
			@RequestParam("page") int page,
			@RequestParam(name = "delflag", required = false) String delFlag,
			@RequestParam(name = "upfile", required = false) MultipartFile mfile) {

	// 업로드된 파일 저장 폴더 지정하기
		String savePath = request.getSession()
				.getServletContext().getRealPath("resources/board_upfiles");

		// 원래 첨부파일이 있는데, 삭제를 선택한 경우
		if (origin.getBoard_original_filename() != null && delFlag != null && delFlag.equals("yes")) {
			// logger.info("첨부파일 있었는데 삭제 체크");
			// 저장 폴더에서 파일을 삭제함
			new File(savePath + "\\" + 
					origin.getBoard_rename_filename()).delete();
			origin.setBoard_original_filename(null);
			origin.setBoard_rename_filename(null);
		}

		// 새로운 첨부파일이 있을때
		if (!mfile.isEmpty()) {
			// logger.info("새로운 첨부파일이 있을 때");
			// 저장 폴더의 이전 파일을 삭제함
			if (origin.getBoard_original_filename() != null) {
				// logger.info("이전 첨부파일 삭제");
				// 저장 폴더에서 파일을 삭제함
				new File(savePath + "\\" + origin.getBoard_rename_filename()).delete();
				origin.setBoard_original_filename(null);
				origin.setBoard_rename_filename(null);
			}

			String fileName = mfile.getOriginalFilename();
			if (fileName != null && fileName.length() > 0) {
				try {
					mfile.transferTo(new File(savePath + "\\" + fileName));

					// 저장된 첨부파일 이름 바꾸기
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

					// 변경할 파일명 만들기
					String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis()));
					// 원본 파일의 확장자를 추출해서, 변경 파일명에 붙여줌
					renameFileName += "." + fileName.substring(fileName.lastIndexOf(".") + 1);

					// 파일명 바꾸기 실행함 : java.io.File 을 이용함
					File originFile = new File(savePath + "\\" + fileName);
					File renameFile = new File(savePath + "\\" + renameFileName);

					if (!originFile.renameTo(renameFile)) {
						// 파일 이름바꾸기 실패시 직접 바꾸기
						FileInputStream fin = new FileInputStream(originFile);
						FileOutputStream fout = new FileOutputStream(renameFile);

						int data = -1;
						byte[] buffer = new byte[1024];

						while ((data = fin.read(buffer, 0, buffer.length)) != -1) {
							fout.write(buffer, 0, buffer.length);
						}

						fin.close();
						fout.close();
						originFile.delete(); // 저장된 원본 파일 삭제함
					} // 직접 이름바꾸기

					origin.setBoard_rename_filename(renameFileName);
				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("message", "전송파일 저장 실패.");
					return "common/error";
				}

			} // 업로드된 파일이 있다면...

			origin.setBoard_original_filename(mfile.getOriginalFilename());
			logger.info("boriginup.do : " + origin);
		}

		if (boardService.updateOrigin(origin) > 0) {
			model.addAttribute("page", page);
			model.addAttribute("board_no", origin.getBoard_no());
			return "redirect:bdetail.do";
		} else {
			model.addAttribute("message", 
					origin.getBoard_no() + "번 게시 원글 수정 실패.");
			return "common/error";
		}

	}

	// 댓글 수정페이지로 이동 처리용
	@RequestMapping("rupview.do")
	public String replyUpdateView (@RequestParam("com_no") int com_no,	@RequestParam("page") int currentPage, 
			Model model, Board board) {
		logger.info("reply Update");
		Reply reply =  replyService.selectReply(com_no);
		
		System.out.println("rupview.do");
		System.out.println("com_no : " + reply.getCom_no());
		System.out.println("page : " + currentPage);
		System.out.println("board_no : " + reply.getBoard_no());
				
		model.addAttribute("currentPage", currentPage);
		logger.info("reply : "+reply.toString());
		model.addAttribute("reply", reply);
		
		return "board/replyUpdateView";
		
	}
	
	// 댓글 수정
	@RequestMapping(value = "roriginup.do", method = RequestMethod.POST)
	public String replyUpdate(Reply reply, @RequestParam("com_no") int com_no, 
			@RequestParam("page") int currentPage, 
			@RequestParam(value="board_no", required = true) int board_no,
			Model model) {
		logger.info("reply UP Write");
		
		System.out.println("roriginup.do");
		System.out.println("com_no : " + com_no);
		System.out.println("page : " + currentPage);
		System.out.println("board_no : " + reply.getBoard_no());
		
		if (replyService.updateReply(reply) > 0) { 
			model.addAttribute("page", currentPage);
			model.addAttribute("board_no", reply.getBoard_no());
			model.addAttribute("com_no", reply.getCom_no());
			return "redirect:bdetail.do?board_no=" + board_no + "&page=" + currentPage;
		} else {
			model.addAttribute("message", 
					reply.getBoard_no() + "번 게시 원글 수정 실패.");
			return "common/error";
		}	
		
	}

	// 댓글삭제
	@RequestMapping("rdelete.do")	

	public String replyDelete(Reply reply, @RequestParam("com_no") int com_no, 
			@RequestParam("page") int currentPage, 
			@RequestParam(value="board_no", required = true) int board_no,
			Model model) {
		logger.info("reply delete");
		System.out.println("board_no : " + board_no);
		System.out.println("board_no : " + reply.getBoard_no());
				
		reply =  replyService.selectReply(com_no);
		
		if (replyService.deleteReply(reply) > 0) {

			return "redirect:bdetail.do?board_no=" + board_no + "&page=" +currentPage ;
			} else {
			model.addAttribute("message", board_no + "번 글 삭제 실패.");
			return "common/error";
		}
		
	}
	
}
