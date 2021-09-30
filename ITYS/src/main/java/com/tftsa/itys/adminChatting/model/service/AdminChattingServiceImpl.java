package com.tftsa.itys.adminChatting.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.adminChatting.model.dao.AdminChattingDao;
import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.adminChatting.model.vo.UserChatting;
import com.tftsa.itys.adminChatting.model.vo.Userinfo;

@Service("adminchattingService")
public class AdminChattingServiceImpl implements AdminChattingService{

	@Autowired
	private AdminChattingDao adminchattingDao;
	
	// 채팅 내역 조회 ServiceImpl
	@Override
	public ArrayList<UserChatting> selectChattingAll() {
		return adminchattingDao.selectChattingAll();
	}

	// 신고 내역 조회 ServiceImpl
	@Override
	public ArrayList<Chattingblock> selectChattingBlockAll() {
		return adminchattingDao.selectChattingBlockAll();
	}
	
	// 로그인 제한 업데이트 ServiceImpl
	@Override
	public int updateLoginOk(Userinfo userinfo) {
		return adminchattingDao.updateLoginOk(userinfo);
	}
}
