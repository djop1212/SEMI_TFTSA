package com.tftsa.itys.adminCategory.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.mypage.model.vo.Subject;

@Repository("admincategoryDao")
public class AdminCategoryDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Subject> selectCategoryAll(String sname){
		List<Subject> list = sqlSession.selectList("admincategoryMapper.selectCategoryAll", sname);
		return (ArrayList<Subject>)list;
	}
	
	public int deleteCategory(String sname){
		return sqlSession.delete("admincategoryMapper.deleteCategory",sname);
	}
	
	public int insertSubject(Subject subject) {
		return sqlSession.insert("admincategoryMapper.insertSubject", subject);
	}
	
	public int cntSubject(String sname) {
		return sqlSession.selectOne("admincategoryMapper.cntSubject",sname);
	}
}
