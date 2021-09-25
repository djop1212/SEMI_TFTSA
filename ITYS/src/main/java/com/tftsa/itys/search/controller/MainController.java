package com.tftsa.itys.search.controller;


import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tftsa.itys.search.service.SearchService;
import com.tftsa.itys.search.vo.DaySearch;
import com.tftsa.itys.search.vo.DetailSearch;
import com.tftsa.itys.search.vo.Keyword;
import com.tftsa.itys.search.vo.Search;
import com.tftsa.itys.search.vo.Subject;
import com.tftsa.itys.search.vo.Tutor;

@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping("top10.do")
	public ModelAndView top10(ModelAndView mv){
		
		ArrayList<Tutor> tutorList = searchService.selectTop10();
		ArrayList<Subject> categoryList = searchService.selectCategory();
		ArrayList<Keyword> keywordList = searchService.selectKeyword();
		
		
		if ((tutorList != null && tutorList.size() > 0) 
				&& (categoryList != null && categoryList.size() > 0)
				&& (keywordList != null && keywordList.size() > 0)
				) {
			
			mv.addObject("categoryList", categoryList);
			mv.addObject("tutorList", tutorList);
			mv.addObject("keywordList", keywordList);
			
			mv.setViewName("main");
		}
		
		return mv;
	}
	
	@RequestMapping(value = "selectSubjec.do", method = RequestMethod.POST)
	@ResponseBody
	public String selectSubjec(Subject subject, HttpServletResponse response) throws UnsupportedEncodingException {
		
		response.setContentType("application/json; charset=utf-8");
		
		ArrayList<Subject> subjectList = searchService.selectSubject(subject.getCategory());

		
		// �쟾�넚�슜 json 媛앹껜 以�鍮�
		JSONObject sendJson = new JSONObject();
		// list �삷湲� json 諛곗뿴 以�鍮�
		JSONArray jarr = new JSONArray();

		// list 瑜� jarr 濡� �삷湲곌린(蹂듭궗)
		for (Subject sb : subjectList) {
			// notice �븘�뱶媛� ���옣�븷 json 媛앹껜 �깮�꽦
			JSONObject job = new JSONObject();

			job.put("sub_name", URLEncoder.encode(sb.getSub_name(), "utf-8"));

			// job 瑜� jarr �뿉 ���옣
			jarr.add(job);
		}

		// �쟾�넚�슜 json 媛앹껜�뿉 jarr �떞�쓬
		sendJson.put("subjectList", jarr);

		return sendJson.toJSONString(); // jsonView 濡� �꽆源�
		// jsonView 媛� 異쒕젰�뒪�듃由� �뿴�뼱�꽌 諛쏆� json �젙蹂대�� �궡蹂대깂
	}
	
//	@RequestMapping(value = "search.do", method = RequestMethod.POST)
//	@ResponseBody
//	public String search(Search search, HttpServletResponse response) throws ParseException, UnsupportedEncodingException {
//		
//		
//		ArrayList<Tutor> searchTutor = searchService.selectSearch(search);
//		
//		JSONObject sendJson = new JSONObject();
//		
//		JSONArray jarr = new JSONArray();
//		
//		if (searchTutor != null && searchTutor.size() > 0) {
//			
//			for(Tutor tutor : searchTutor) {
//				
//				JSONObject job = new JSONObject();
//				job.put("user_no", tutor.getUser_no());
//				job.put("pic", tutor.getPic());
//				job.put("min_pay", URLEncoder.encode(tutor.getMin_pay(), "utf-8"));
//				job.put("online_ok", tutor.getOnline_ok());
//				job.put("area", URLEncoder.encode(
//						tutor.getArea(), "utf-8"));
//				job.put("area", URLEncoder.encode(
//						tutor.getArea(), "utf-8"));
//				job.put("intro",  URLEncoder.encode(
//						tutor.getIntro(), "utf-8"));
//				job.put("day", URLEncoder.encode(
//						tutor.getDay(), "utf-8"));
//				job.put("time", tutor.getTime());
//				job.put("style", URLEncoder.encode(
//						tutor.getStyle(), "utf-8"));
//				job.put("l_grd", URLEncoder.encode(
//						tutor.getL_grd(), "utf-8"));
//				job.put("sub_name", URLEncoder.encode(
//						tutor.getSub_name(), "utf-8"));
//				
//				jarr.add(job); //jarr �뿉 job ���옣
//			}
//
//		sendJson.put("searchTutor", jarr);
//
//		}
//		return sendJson.toJSONString();
//	}
	
	@RequestMapping(value = "search.do", method = RequestMethod.POST)
	public ModelAndView search(Search search,HttpServletRequest request,  HttpServletResponse response, ModelAndView mv) throws ParseException, UnsupportedEncodingException {
		
		

		System.out.println("베이직--------------------------------------------------------------------------------");
		
		ArrayList<Tutor> searchTutor = searchService.selectSearch(search);
		ArrayList<Tutor> tutorList = searchService.selectTop10();
		ArrayList<Subject> categoryList = searchService.selectCategory();
		ArrayList<Keyword> keywordList = searchService.selectKeyword();
		
		if ( (searchTutor != null && searchTutor.size() > 0)
			&& (tutorList != null && tutorList.size() > 0) 
			&& (categoryList != null && categoryList.size() > 0)
			&& (keywordList != null && keywordList.size() > 0)) {
		

			mv.addObject("searchTutor", searchTutor);
			mv.addObject("categoryList", categoryList);
			mv.addObject("tutorList", tutorList);
			mv.addObject("keywordList", keywordList);

			mv.setViewName("main");
		}
		
		return mv;
	}
	
	@RequestMapping(value = "detailSearch.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView detailSearch(@RequestBody String param,
			HttpServletRequest request, 
			HttpServletResponse response, ModelAndView mv) 
					throws ParseException, UnsupportedEncodingException {
		
		response.setContentType("application/json; charset=utf-8");
		
		JSONParser jparser = new JSONParser();
		JSONArray jarr = (JSONArray)jparser.parse(param);
		
		System.out.println("디테일-------------------------------------------------------------------------------------");
		
		Search search = new Search();
		
		String category = "";
		String sub_name = "";
		String word = "";
		String l_grd_str = "";
		String area = "";
		String keyword_str = "";
		String day_str = "";
		
		
		
		//요일을 포함한 검색 결과를 저장하기 위한 변수
		ArrayList<Tutor> searchDayTutor = new ArrayList<Tutor>();
		ArrayList<Tutor> detailSearchTutor = new ArrayList<Tutor>();
		
		for(int i =0 ; i< jarr.size() ; i++) {
			
			JSONObject job = (JSONObject)jarr.get(i);
			
			if(i == 0) {
				System.out.println(" 카테고리 : "+((String)job.get("category")));
				category = (String)job.get("category");
				search.setCategory((String)job.get("category"));
			}else if(i == 1) {
				System.out.println(" 소분류 : "+((String)job.get("sub_name")));
				sub_name = (String)job.get("sub_name");
				search.setSub_name((String)job.get("sub_name"));
			}else if (i == 2) {
				System.out.println(" 검색어 : "+ (String)(job.get("word")) );
				word = (String)job.get("word");
				search.setWord((String)job.get("word"));
			}else if (i == 3) {
				JSONArray arr = (JSONArray)job.get("l_grd_list");
				
				for(int j =0 ; j < arr.size() ; j++) {
					System.out.println(" 학력 : "+arr.get(j));
					l_grd_str += arr.get(j)+", ";
				}
				
			}else if( i == 4) {
				System.out.println(" 지역 : "+((String)job.get("area")));
				area = (String)job.get("area");
			}else if (i == 5 ) {
				JSONArray arr = (JSONArray)job.get("keyword_list");
				
				for(int j =0 ; j < arr.size() ; j++) {
					System.out.println(" 키워드 : "+arr.get(j));
					keyword_str += arr.get(j)+", ";
				}
			}else if( i == 6) {
				
				JSONArray arr = (JSONArray)job.get("day_list");
				
				for(int j =0 ; j < arr.size() ; j++) {
					
					System.out.println(" 요일 : "+arr.get(j));
					
					day_str += arr.get(j)+", ";
					
				}
				//n번째 Tutor
				
			}
		}
		// 대분류, 소분류로 Tutor리스트 받아오기
		ArrayList<Tutor> searchTutor = searchService.selectSearch(search);
		
		System.out.println("category : "+category);
		System.out.println("sub_name : "+sub_name);
		System.out.println("word : "+word);
		System.out.println("l_grd_str : "+l_grd_str);
		System.out.println("area : "+area);
		System.out.println("keyword_str : "+keyword_str);
		System.out.println("day_str:"+day_str);
		
		for(int tutor_index = 0 ; tutor_index < searchTutor.size() ; tutor_index++) {
			
			//해당 튜터가 가지고 있는 day들 저장하기 위한 스트링 배열
			DaySearch daySearch = new DaySearch();
			
			DetailSearch detailSearch = new DetailSearch();
			// 해당 튜터들의 요일들 출력
			String db_day_str =searchService.selectDay(searchTutor.get(tutor_index).getUser_no());
			
			ArrayList<Keyword> db_keyword_arr = searchService.selectOneKeyword(searchTutor.get(tutor_index).getUser_no());
			String db_keyword_str = "";
			
			for(int db_keyword_index = 0 ; db_keyword_index < db_keyword_arr.size() ; db_keyword_index++) {
				db_keyword_str += db_keyword_arr.get(db_keyword_index)+", ";
			}
			
			detailSearch.setUser_no(searchTutor.get(tutor_index).getUser_no());
			detailSearch.setDay_str(day_str);
			detailSearch.setDb_day_str(db_day_str);
			detailSearch.setArea(area);
			
			String[] l_grd_list = l_grd_str.replace(" ","").split(",");
			String[] keyword_list = keyword_str.replace(" ","").split(",");
			
			String[] db_day_list = detailSearch.getDb_day_str().replace(" ","").split(",");

			detailSearch.setL_grd_list(l_grd_list);
			detailSearch.setKeyword_list(keyword_list);
			
			for(int z = 0 ; z < l_grd_list.length ; z++) {
				System.out.println("l_grd_list : " + l_grd_list[z]);
			}
			for(int z = 0 ; z < keyword_list.length ; z++) {
				System.out.println("keyword_list : " + keyword_list[z]);
			}
			for(int z = 0 ; z < db_day_list.length ; z++) {
				System.out.println("db_day_list : " + db_day_list[z]);
			}
			
			detailSearch.setDb_day_list(db_day_list);
			
			Tutor tutor = searchService.selectDetailSearch(detailSearch);
			
			// 날짜 검색을 포함한 결과 저장 변수
			detailSearchTutor.add(tutor);
			
		}
		
		//저장된 튜터들의 각 요일들 추출
		
		ArrayList<Subject> categoryList = searchService.selectCategory();
		ArrayList<Keyword> keywordList = searchService.selectKeyword();
		
		if ( (searchDayTutor != null && searchDayTutor.size() > 0) 
			&& (categoryList != null && categoryList.size() > 0)
			&& (keywordList != null && keywordList.size() > 0)
			&& (detailSearchTutor != null && detailSearchTutor.size() > 0)) {
		

			mv.addObject("tutorList", searchDayTutor);
			mv.addObject("categoryList", categoryList);
			mv.addObject("keywordList", keywordList);
			mv.addObject("tutorList", detailSearchTutor);
			
			mv.setViewName("main");
		}
		
		return mv;
	}
}
