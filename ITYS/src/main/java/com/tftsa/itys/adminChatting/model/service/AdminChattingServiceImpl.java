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
	
	@Override
	public ArrayList<UserChatting> selectChattingAll() {
		return adminchattingDao.selectChattingAll();
	}

	@Override
	public ArrayList<Chattingblock> selectChattingBlockAll() {
		return adminchattingDao.selectChattingBlockAll();
	}
	
	@Override
	public int updateLoginOk(Userinfo userinfo) {
		return adminchattingDao.updateLoginOk(userinfo);
	}
}
