package com.tftsa.itys.adminChatting.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.adminChatting.model.vo.UserChatting;
import com.tftsa.itys.adminChatting.model.vo.Userinfo;

@Repository("adminchattingDao")
public class AdminChattingDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 채팅 내역 조회 Dao
	public ArrayList<UserChatting> selectChattingAll(){
		List<UserChatting> list = sqlSession.selectList("adminchattingMapper.selectChattingAll");
		return (ArrayList<UserChatting>)list;
	}
	
	// 신고 내역 조회 Dao
	public ArrayList<Chattingblock> selectChattingBlockAll(){
		List<Chattingblock> list = sqlSession.selectList("adminchattingMapper.selectChattingBlockAll");
		return (ArrayList<Chattingblock>)list;
	}
	
	// 로그인 제한 업데이트 Dao
	public int updateLoginOk(Userinfo userinfo) {
		return sqlSession.update("adminchattingMapper.updateLoginOk", userinfo);
	}
}
