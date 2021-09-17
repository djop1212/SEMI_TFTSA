package com.tftsa.itys.chatting.model.service;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.chatting.model.vo.UserChattingStudent;
import com.tftsa.itys.chatting.model.vo.UserChattingTutor;
import com.tftsa.itys.mypage.model.vo.Likes;

public interface ChattingService {
	UserChattingStudent selectStudent(int chat_room_no);
	UserChattingTutor selectTutor(int chat_room_no);
	int deleteChatting(int chat_room_no);
	int insertBlock(Chattingblock chattingblock);
	int insertLikes(Likes likes);
}
