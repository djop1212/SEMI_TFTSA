package com.tftsa.itys.chatting.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.chatting.model.dao.ChattingDao;
import com.tftsa.itys.chatting.model.vo.Likes;
import com.tftsa.itys.chatting.model.vo.UserTutor;

@Service("chattingService")
public class ChattingServiceImpl implements ChattingService{

	@Autowired
	private ChattingDao chattingDao;
	
	@Override
	public UserTutor selectChatting(int user_no) {
		return chattingDao.selectChatting(user_no);
	}

	@Override
	public int deleteChatting(int chat_room_no) {
		return chattingDao.deleteChatting(chat_room_no);
	}

	@Override
	public int insertBlock(Chattingblock chattingblock) {
		return chattingDao.insertBlock(chattingblock);
	}

	@Override
	public int insertLikes(Likes likes) {
		return chattingDao.insertLikes(likes);
	}
}
