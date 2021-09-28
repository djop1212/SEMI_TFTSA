package com.tftsa.itys.adminDashboard.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.adminDashboard.model.service.AdminDashboardServiceImpl;


@Repository("admindashboardDao")
public class AdminDashboardDao {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminDashboardDao.class);
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int todayEarning(){
		return sqlSession.selectOne("admindashboardMapper.todayEarning");
	}
}
	
//	public ArrayList<Subject> selectCategoryAll(String sname){
//		List<Subject> list = sqlSession.selectList("admindashboardMapper.selectCategoryAll", sname);
//		return (ArrayList<Subject>)list;
//	}
//	
//	public int deleteCategory(String sname){
//		return sqlSession.delete("admindashboardMapper.deleteCategory",sname);
//	}
//	
//	public int insertSubject(Subject subject) {
//		return sqlSession.insert("admindashboardMapper.insertSubject", subject);
//	}
//	
//	public int cntSubject(String sname) {
//		return sqlSession.selectOne("admindashboardMapper.cntSubject",sname);
//	}
