package com.tftsa.itys.adminDashboard.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.adminDashboard.model.vo.BarData;
import com.tftsa.itys.adminDashboard.model.vo.PieData;
import com.tftsa.itys.adminPayment.model.vo.Payment;
import com.tftsa.itys.board.model.vo.Board;


@Repository("admindashboardDao")
public class AdminDashboardDao {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminDashboardDao.class);
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int todayEarning(){
		return sqlSession.selectOne("admindashboardMapper.todayEarning");
	}
	
	public int monthSales(){
		return sqlSession.selectOne("admindashboardMapper.monthSales");
	}
	
	public int totalUsers(){
		return sqlSession.selectOne("admindashboardMapper.totalUsers");
	}
	
	public int cntChattingroom(){
		return sqlSession.selectOne("admindashboardMapper.cntChattingroom");
	}
	
	public int potential(){
		return sqlSession.selectOne("admindashboardMapper.potential");
	}
	
	public ArrayList<Payment> fiveRecentPayments(){
		List<Payment> pay_list = sqlSession.selectList("admindashboardMapper.fiveRecentPayments");
		return (ArrayList<Payment>)pay_list;
	}
	
	public ArrayList<BarData> oneYearEarning(){
		List<BarData> data_list = sqlSession.selectList("admindashboardMapper.oneYearEarning");
		return (ArrayList<BarData>)data_list;
	}
	
	public ArrayList<Board> fiveNewlyPosted(){
		List<Board> post_list = sqlSession.selectList("admindashboardMapper.fiveNewlyPosted");
		return (ArrayList<Board>)post_list;
	}
	
	public ArrayList<PieData> categorySaleRate(){
		List<PieData> pie_list = sqlSession.selectList("admindashboardMapper.categorySaleRate");
		return (ArrayList<PieData>)pie_list;
	}

}
	

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
