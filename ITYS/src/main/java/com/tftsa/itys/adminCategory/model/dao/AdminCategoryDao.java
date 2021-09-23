package com.tftsa.itys.adminCategory.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.adminCategory.model.vo.Subject;

@Repository("admincategoryDao")
public class AdminCategoryDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Subject> selectCategoryAll(){
		List<Subject> list = sqlSession.selectList("admincategoryMapper.selectCategoryAll");
		return (ArrayList<Subject>)list;
	}
}
