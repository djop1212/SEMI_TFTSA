package com.tftsa.itys.chatting.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.chatting.model.dao.ChattingDao;
import com.tftsa.itys.chatting.model.vo.UserChattingStudent;
import com.tftsa.itys.chatting.model.vo.UserChattingTutor;
import com.tftsa.itys.mypage.model.vo.Likes;

@Service("chattingService")
public class ChattingServiceImpl implements ChattingService{

	@Autowired
	private ChattingDao chattingDao;
	
	@Override
	public UserChattingStudent selectStudent(int chat_room_no) {
		return chattingDao.selectStudent(chat_room_no);
	}

	@Override
	public UserChattingTutor selectTutor(int chat_room_no) {
		return chattingDao.selectTutor(chat_room_no);
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
