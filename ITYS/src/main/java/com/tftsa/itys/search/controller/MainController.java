package com.tftsa.itys.search.controller;


import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tftsa.itys.mypage.model.vo.Subject;
import com.tftsa.itys.mypage.model.vo.Tutor;
import com.tftsa.itys.search.service.SearchService;
import com.tftsa.itys.search.vo.Avg;
import com.tftsa.itys.search.vo.DaySearch;
import com.tftsa.itys.search.vo.DetailSearch;
import com.tftsa.itys.search.vo.Keyword;
import com.tftsa.itys.search.vo.Search;

@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping("top10.do")
	public ModelAndView top10(ModelAndView mv){
		
		ArrayList<Tutor> tutorList = searchService.selectTop10();
		ArrayList<com.tftsa.itys.mypage.model.vo.Subject> categoryList = searchService.selectCategory();
		ArrayList<Keyword> keywordList = searchService.selectKeyword();
		ArrayList<Avg> avgList_origin = searchService.selectAvg();
		ArrayList<Avg> avgList = new ArrayList<Avg>();
		
		
		for(int i = 0 ; i < avgList_origin.size() ; i++) {
			String a = avgList_origin.get(i).getUser_no();
			double b = 0.0;
			if( !(avgList_origin.get(i).getAvg() == null) ) {
				b = Math.round( (avgList_origin.get(i).getAvg()/2.0 *100)) / 100.0;
			}
			
			avgList.add(new Avg( a,b ));
		}
		
		
		if ((categoryList != null && categoryList.size() > 0)
				&& (keywordList != null && keywordList.size() > 0)
				) {
			
			mv.addObject("categoryList", categoryList);
			mv.addObject("keywordList", keywordList);
		}
		if( !(tutorList != null && tutorList.isEmpty()) ) {
			
			mv.addObject("tutorList", tutorList);
			mv.addObject("avgList", avgList);
			
		}
		
		mv.setViewName("search/tutor_search");
		return mv;
	}
	
	@RequestMapping(value = "selectSubjec.do", method = RequestMethod.POST)
	@ResponseBody
	public String selectSubjec(Subject subject, HttpServletResponse response) throws UnsupportedEncodingException {
		
		response.setContentType("application/json; charset=utf-8");
		
		JSONObject sendJson = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		System.out.println("subject.getCategory() : "+subject.getCategory());
		
		if(subject.getCategory().equals("전체")) {
			System.out.println("전체선택");
			JSONObject job = new JSONObject();

			job.put("sub_name", URLEncoder.encode("전체", "utf-8"));

			jarr.add(job);
			
		}else {
			ArrayList<com.tftsa.itys.mypage.model.vo.Subject> subjectList = searchService.selectSubject(subject.getCategory());
			
			for (com.tftsa.itys.mypage.model.vo.Subject sb : subjectList) {
				
				JSONObject job = new JSONObject();
				
				job.put("sub_name", URLEncoder.encode(sb.getSub_name(), "utf-8"));
				
				jarr.add(job);
			}
			
		}
		


		sendJson.put("subjectList", jarr);

		return sendJson.toJSONString(); // 
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
//				jarr.add(job); //jarr
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
		
		if(search.getCategory().equals("전체")){
			search.setCategory("null");
		}
		
		if(search.getSub_name().equals("전체")){
			search.setSub_name("null");
		}
		
		if(search.getWord().equals("") || search.getWord() ==""){
			search.setWord("null");
		}
		
		System.out.println("카테고리 : " + search.getCategory());
		System.out.println("서브네임 : " + search.getSub_name());
		System.out.println("워드 : " + search.getWord());
		
		ArrayList<Tutor> searchTutor = searchService.selectSearch(search);
		ArrayList<Subject> categoryList = searchService.selectCategory();
		ArrayList<Keyword> keywordList = searchService.selectKeyword();
		
		ArrayList<Avg> avgList_origin = searchService.selectAvg();
		ArrayList<Avg> avgList = new ArrayList<Avg>();
		
		for(int i = 0 ; i < avgList_origin.size() ; i++) {
			String a = avgList_origin.get(i).getUser_no();
			double b = 0.0;
			if( !(avgList_origin.get(i).getAvg() == null) ) {
				b = Math.round( (avgList_origin.get(i).getAvg()/2.0 *100)) / 100.0;
			}
			
			avgList.add(new Avg( a,b ));
		}
		
		
		if ( (categoryList != null && categoryList.size() > 0)
			&& (keywordList != null && keywordList.size() > 0)) {
		

			mv.addObject("categoryList", categoryList);
			mv.addObject("keywordList", keywordList);

		}
		if ( !searchTutor.isEmpty() ) {

			mv.addObject("avgList", avgList);	
			mv.addObject("searchTutor", searchTutor);			
		}
		mv.setViewName("search/tutor_search");
		
		return mv;
	}
	
	@RequestMapping(value = "detailSearch.do", method = RequestMethod.GET)
	public ModelAndView detailSearch(@ModelAttribute("detailSearch") DetailSearch detailSearch,
			HttpServletRequest request, 
			HttpServletResponse response, ModelAndView mv) 
					throws ParseException, UnsupportedEncodingException {
		
		System.out.println("디테일-------------------------------------------------------------------------------------");
		
		Search search = new Search();
		
		if(detailSearch.getCategory().equals("전체")){
			detailSearch.setCategory("null");
		}
		
		if(detailSearch.getSub_name().equals("전체")){
			detailSearch.setSub_name("null");
		}
		
		if(detailSearch.getWord().equals("") || detailSearch.getWord() ==""){
			detailSearch.setWord("null");
		}
		
		String category = detailSearch.getCategory();
		String sub_name = detailSearch.getSub_name();
		String word = detailSearch.getWord();
		
		String stime = detailSearch.getStime();
		String etime = detailSearch.getEtime();
		
		String[] l_grd_list = detailSearch.getL_grd_list();
		
		String[] day_list = detailSearch.getDay_list();
		
		String area = detailSearch.getArea();
		String[] keyword_list = detailSearch.getKeyword_list();
		String day_str = StringUtils.join(day_list, ',');
		
		String[] online_ok_list = detailSearch.getOnline_ok_list();
		String min_price = detailSearch.getMin_price();
		String max_price = detailSearch.getMax_price();

		System.out.println("min_price : "+ min_price);
		System.out.println("max_price : "+ max_price);
		
		search.setCategory(category);
		search.setSub_name(sub_name);
		search.setWord(word);
		
		//요일을 포함한 검색 결과를 저장하기 위한 변수
		ArrayList<Tutor> detailSearchTutor = new ArrayList<Tutor>();
		
		// 대분류, 소분류로 Tutor리스트 받아오기
		ArrayList<Tutor> searchTutor = searchService.selectSearch(search);
		
		System.out.println("category : "+category);
		System.out.println("sub_name : "+sub_name);
		System.out.println("word : "+word);
		
		System.out.println("l_grd_list : "+l_grd_list[0]);
		
		System.out.println("area : "+area);
		
		for(int i = 0 ; i < keyword_list.length ; i++) {
			System.out.println("keyword_list : "+keyword_list[i]+", "+i);
		}
		
		System.out.println("day_str:" + day_str);
		
		System.out.println("searchTutor.size : "+searchTutor.size());
		
		for(int tutor_index = 0 ; tutor_index < searchTutor.size() ; tutor_index++) {
			
			// 해당 튜터가 가지고 있는 day들 저장하기 위한 스트링 배열
			DaySearch daySearch = new DaySearch();
			
			// 해당 튜터들의 요일들 출력
			String db_day_str = searchService.selectDay(searchTutor.get(tutor_index).getUser_no());
			
			String[] db_day_list = db_day_str.replace(" ", "").split(",");
			for(int db_day_index = 0 ; db_day_index < db_day_list.length ; db_day_index++) {
				System.out.println("db_day_list : "+ db_day_list[db_day_index]);
			}
			
			String db_keyword_str = "";
			
			
			// 해당 유저의 db에 저장된 키워드 array
			ArrayList<Keyword> db_keyword_arr = searchService.selectOneKeyword(searchTutor.get(tutor_index).getUser_no());
			
			// 해당 tutor의 db에 저장된 키워드를 ArrayList로 저장하고 스트링 형태로 변환
			for(int db_keyword_index = 0 ; db_keyword_index < db_keyword_arr.size() ; db_keyword_index++) {
				
				db_keyword_str += db_keyword_arr.get(db_keyword_index)+", ";
				System.out.println("db_keyword_arr : "+db_keyword_arr.get(db_keyword_index));
			}
			
			
			
			detailSearch.setUser_no(searchTutor.get(tutor_index).getUser_no());
			
			detailSearch.setCategory(category);
			detailSearch.setSub_name(sub_name);
			detailSearch.setWord(word);
			
			detailSearch.setArea(area);
			detailSearch.setStime(stime);
			detailSearch.setEtime(etime);
			detailSearch.setMax_price(max_price);
			detailSearch.setMin_price(min_price);
			
			detailSearch.setDay_str(day_str);
			detailSearch.setDb_day_list(db_day_list);
			
			detailSearch.setKeyword_list(keyword_list);
			detailSearch.setOnline_ok_list(online_ok_list);
			
			// 스트링형으로 저장된  str들을 String[]로 변환
			
			//String[] db_day_list = detailSearch.getDb_day_str().replace(" ","").split(",");
			
			detailSearch.setL_grd_list(l_grd_list);
			
			/*
			 * for(int z = 0 ; z < l_grd_list.length ; z++) {
			 * System.out.println("l_grd_list : " + l_grd_list[z]); } for(int z = 0 ; z <
			 * keyword_list.length ; z++) { System.out.println("keyword_list : " +
			 * keyword_list[z]); } for(int z = 0 ; z < db_day_list.length ; z++) {
			 * System.out.println("db_day_list : " + db_day_list[z]); }
			 */
			
			System.out.println("user_no : " + searchTutor.get(tutor_index).getUser_no());
			for(int z = 0 ; z < l_grd_list.length ; z++) {
				System.out.println("l_grd_list : "+l_grd_list[z]+", "+z);
			}
			for(int z = 0 ; z < online_ok_list.length ; z++) {
				System.out.println("online_ok_list : "+online_ok_list[z]+", "+z);
			}
			System.out.println("area : "+ area);
			for(int z = 0 ; z < keyword_list.length ; z++) {
				System.out.println("keyword_list : "+keyword_list[z]+", "+z);
			}
			System.out.println("day_str : "+day_str);
			System.out.println("stime : " + detailSearch.getStime());
			System.out.println("etime : " + detailSearch.getEtime());
			System.out.println("min_price : "+min_price);
			System.out.println("max_price : "+max_price);
			
			
			detailSearch.setDb_day_list(db_day_list);
			
			Tutor tutor = searchService.selectDetailSearch(detailSearch);
			
			
			// 날짜 검색을 포함한 결과 저장 변수
			System.out.println("---------종료----------");
			
			System.out.println("tutor에 담긴 값"+tutor);
			
			if( tutor != null ) {
				detailSearchTutor.add(tutor);
				
				System.out.println("---저장완료---");
				System.out.println("detailSearchTutor.size() : "+detailSearchTutor.size());
			}
		}
		//저장된 튜터들의 각 요일들 추출
		ArrayList<Subject> categoryList = searchService.selectCategory();
		ArrayList<Keyword> keywordList = searchService.selectKeyword();
		ArrayList<Avg> avgList_origin = searchService.selectAvg();
		ArrayList<Avg> avgList = new ArrayList<Avg>();
		
		
		for(int i = 0 ; i < avgList_origin.size() ; i++) {
			String a = avgList_origin.get(i).getUser_no();
			double b = 0.0;
			if( !(avgList_origin.get(i).getAvg() == null) ) {
				b = Math.round( (avgList_origin.get(i).getAvg()/2.0 *100)) / 100.0;
			}
			
			avgList.add(new Avg( a,b ));
		}
		
		if ( (categoryList != null && categoryList.size() > 0)
			&& (keywordList != null && keywordList.size() > 0) ) {
			mv.addObject("categoryList", categoryList);
			mv.addObject("keywordList", keywordList);
			
		}
		System.out.println("detailSearchTutor.size() : "+detailSearchTutor.size());
		
		if( ( !detailSearchTutor.isEmpty()) ) {
			
			/*
			 * System.out.println("detailSearchTutor.size() : " +detailSearchTutor.size());
			 * System.out.println("detailSearchTutor : "+detailSearchTutor.get(0));
			 * 
			 * System.out.println("detailSearchTutor : "+detailSearchTutor.get(0).getIntro()
			 * );
			 */

			mv.addObject("searchTutor", detailSearchTutor);
			mv.addObject("avgList", avgList);
			
		}
		mv.setViewName("search/tutor_search");
		
		return mv;
	}
}
