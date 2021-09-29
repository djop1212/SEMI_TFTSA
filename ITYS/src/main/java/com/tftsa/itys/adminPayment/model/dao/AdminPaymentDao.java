package com.tftsa.itys.adminPayment.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.adminPayment.model.vo.Payment;

@Repository("adminpaymentDao")
public class AdminPaymentDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 결제 내역 조회 Dao
	public ArrayList<Payment> selectPaymentAll() {
		List<Payment> list = sqlSession.selectList("adminpaymentMapper.selectPaymentAll");
		return (ArrayList<Payment>)list;
	}
}
