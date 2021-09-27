package com.tftsa.itys.adminKeyword.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.adminKeyword.model.vo.AdminKeyword;

@Repository("adminKeywordDao")
public class AdminKeywordDao {
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	//모든 회원 조회
	public ArrayList<AdminKeyword> selectAllKeywords(String tper){
		List<AdminKeyword> list = sqlSession.selectList("adminkeywordMapper.selectAllKeywords",tper);
		return (ArrayList<AdminKeyword>)list;
	}
	
	//키워드 삭제
	public int deleteKeyword(String type_per) {
		return sqlSession.delete("adminkeywordMapper.deleteKeyword", type_per);
	}
	
	//키워드 추가
	public int insertKeyword(String type_per) {
		return sqlSession.insert("adminkeywordMapper.insertKeyword", type_per);
	}
	
	public int cntKeyword(String type_per) {
		return sqlSession.selectOne("adminkeywordMapper.cntKeyword", type_per);
	}
}