package com.tftsa.itys.search.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.mypage.model.vo.Subject;
import com.tftsa.itys.mypage.model.vo.Tutor;
import com.tftsa.itys.search.dao.SearchDao;
import com.tftsa.itys.search.vo.Avg;
import com.tftsa.itys.search.vo.DaySearch;
import com.tftsa.itys.search.vo.DetailSearch;
import com.tftsa.itys.search.vo.Keyword;
import com.tftsa.itys.search.vo.Search;

@Service("searchService")
public class SearchServiceImpl implements SearchService{
	
	@Autowired
	SearchDao searchDao;
	
	@Override
	public ArrayList<Tutor> selectTop10(){
		return searchDao.selectTop10();
	}
	
	@Override
	public ArrayList<Avg> selectAvg(){
		return searchDao.selectAvg();
	}
	
	@Override
	public ArrayList<Subject> selectCategory(){
		return searchDao.selectCategory();
	}
	
	@Override
	public ArrayList<Subject> selectSubject(String category){
		return searchDao.selectSubject(category);
	}
	
	@Override
	public ArrayList<Keyword> selectKeyword(){
		return searchDao.selectKeyword();
	}
	
	@Override
	public ArrayList<Tutor> selectSearch(Search search){
		return searchDao.selectSearch(search);
	}
	
	
	@Override
	public String selectDay(int user_no){
		return searchDao.selectDay(user_no);
	}
	
	@Override
	public Tutor selectDaySearch(DaySearch daySearch){
		return searchDao.selectDaySearch(daySearch);
	}
	
	@Override
	public Tutor selectDetailSearch(DetailSearch detailSearch){
		return searchDao.selectDetailSearch(detailSearch);
	}
	
	@Override
	public ArrayList<Keyword> selectOneKeyword(int user_no){
		return searchDao.selectOneKeyword(user_no);
	}
	
}
