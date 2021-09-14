package com.tftsa.itys.chatting.model.service;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.chatting.model.vo.Likes;
import com.tftsa.itys.chatting.model.vo.UserTutor;

public interface ChattingService {
	UserTutor selectChatting(int user_no);
	int deleteChatting(int chat_room_no);
	int insertBlock(Chattingblock chattingblock);
	int insertLikes(Likes likes);
}
