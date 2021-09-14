package com.tftsa.itys.adminChatting.model.service;

import java.util.ArrayList;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.adminChatting.model.vo.UserChatting;
import com.tftsa.itys.adminChatting.model.vo.Userinfo;

public interface AdminChattingService {
	ArrayList<UserChatting> selectChattingAll();
	ArrayList<Chattingblock> selectChattingBlockAll();
	int updateLoginOk(Userinfo userinfo);
}
