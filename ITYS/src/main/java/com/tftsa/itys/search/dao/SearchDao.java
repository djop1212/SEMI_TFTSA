package com.tftsa.itys.search.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.mypage.model.vo.Subject;
import com.tftsa.itys.mypage.model.vo.Tutor;
import com.tftsa.itys.search.vo.Avg;
import com.tftsa.itys.search.vo.DaySearch;
import com.tftsa.itys.search.vo.DetailSearch;
import com.tftsa.itys.search.vo.Keyword;
import com.tftsa.itys.search.vo.Search;


@Repository("searchDao")
public class SearchDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public ArrayList<Tutor> selectTop10() {
		List<Tutor> list = sqlSession.selectList("top10Mapper.selectTop10");
		return (ArrayList<Tutor>) list;
	}
	
	public ArrayList<Avg> selectAvg() {
		List<Avg> list = sqlSession.selectList("top10Mapper.selectAvg");
		return (ArrayList<Avg>) list;
	}
	
	public ArrayList<Subject> selectCategory() {
		List<com.tftsa.itys.mypage.model.vo.Subject> list = sqlSession.selectList("subjectMapper.selectCategory");
		return (ArrayList<com.tftsa.itys.mypage.model.vo.Subject>) list;
	}
	
	public ArrayList<Subject> selectSubject(String category) {
		List<com.tftsa.itys.mypage.model.vo.Subject> list = sqlSession.selectList("subjectMapper.selectSubject", category);
		return (ArrayList<com.tftsa.itys.mypage.model.vo.Subject>) list;
	}
	
	public ArrayList<Keyword> selectKeyword() {
		List<Keyword> list = sqlSession.selectList("keywordMapper.selectKeyword");
		return (ArrayList<Keyword>) list;
	}
	
	public ArrayList<Tutor> selectSearch(Search search) {
		List<Tutor> list = sqlSession.selectList("searchMapper.selectSearch", search);
		return (ArrayList<Tutor>) list;
	}
	
	
	public String selectDay(int user_no) {
		
		String day_str = sqlSession.selectOne("searchMapper.selectDay", user_no);

		return day_str;
	}
	
	public Tutor selectDaySearch(DaySearch daySearch) {
		
		/*
		 * String[] db_day_str2 = daySearch.getDb_day_str().split(",");
		 * 
		 * System.out.println("db_day_str2 : "+db_day_str2);
		 * daySearch.setDb_day_list(db_day_str2);
		 */
		
		Tutor list = sqlSession.selectOne("searchMapper.selectDaySearch", daySearch);
		
		return list;
	}
	
	public Tutor selectDetailSearch(DetailSearch detailSearch) {
		
		/*
		 * String[] db_day_str2 = daySearch.getDb_day_str().split(",");
		 * 
		 * System.out.println("db_day_str2 : "+db_day_str2);
		 * daySearch.setDb_day_list(db_day_str2);
		 */
		
		Tutor list = sqlSession.selectOne("searchMapper.selectDetailSearch", detailSearch);
		
		return list;
	}
	
	
	public ArrayList<Keyword> selectOneKeyword(int user_no) {
		List<Keyword> list = sqlSession.selectList("keywordMapper.selectOneKeyword");
		return (ArrayList<Keyword>) list;
	}
	
}
