package com.tftsa.itys.chatting.model.service;

import java.util.ArrayList;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.chatting.model.vo.Chatting;
import com.tftsa.itys.chatting.model.vo.Chattingroom;
import com.tftsa.itys.chatting.model.vo.UserChattingStudent;
import com.tftsa.itys.chatting.model.vo.UserChattingTutor;
import com.tftsa.itys.mypage.model.vo.Likes;

public interface ChattingService {
	ArrayList<Chatting> selectChattingInfo(int chat_room_no);
	UserChattingStudent selectStudent(int chat_room_no);
	UserChattingTutor selectTutor(int chat_room_no);
	Chattingroom selectChattingroom(int chat_room_no);
	int deleteChatting(int chat_room_no);
	int insertBlock(Chattingblock chattingblock);
	int insertLikes(Likes likes);
	int insertChatting(Chatting chatting);
	int insertChattingroom(Chattingroom chattingroom);
}
