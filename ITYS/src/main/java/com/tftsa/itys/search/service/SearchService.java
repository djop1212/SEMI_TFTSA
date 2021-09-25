package com.tftsa.itys.search.service;

import java.util.ArrayList;

import com.tftsa.itys.search.vo.DaySearch;
import com.tftsa.itys.search.vo.DetailSearch;
import com.tftsa.itys.search.vo.Keyword;
import com.tftsa.itys.search.vo.Search;
import com.tftsa.itys.search.vo.Subject;
import com.tftsa.itys.search.vo.Tutor;

public interface SearchService {

	ArrayList<Tutor> selectTop10();
	ArrayList<Subject> selectCategory();
	ArrayList<Subject> selectSubject(String category);
	ArrayList<Keyword> selectKeyword();
	ArrayList<Tutor> selectSearch(Search search);
	String selectDay(int user_no);
	Tutor selectDaySearch(DaySearch daySearch);
	Tutor selectDetailSearch(DetailSearch detailSearch);
	ArrayList<Keyword> selectOneKeyword(int user_no);
}