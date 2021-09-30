package com.tftsa.itys.adminChatting.model.service;

import java.util.ArrayList;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.adminChatting.model.vo.UserChatting;
import com.tftsa.itys.adminChatting.model.vo.Userinfo;

public interface AdminChattingService {
	ArrayList<UserChatting> selectChattingAll(); // 채팅 내역 조회 Service
	ArrayList<Chattingblock> selectChattingBlockAll(); // 신고 내역 조회 Service
	int updateLoginOk(Userinfo userinfo); // 로그인 제한 업데이트 Service
}
