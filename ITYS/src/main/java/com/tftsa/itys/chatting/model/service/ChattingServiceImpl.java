package com.tftsa.itys.chatting.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.chatting.model.dao.ChattingDao;
import com.tftsa.itys.chatting.model.vo.Chatting;
import com.tftsa.itys.chatting.model.vo.Chattingroom;
import com.tftsa.itys.chatting.model.vo.StudentChattingroom;
import com.tftsa.itys.chatting.model.vo.TutorChattingroom;
import com.tftsa.itys.chatting.model.vo.UserChattingStudent;
import com.tftsa.itys.chatting.model.vo.UserChattingTutor;
import com.tftsa.itys.mypage.model.vo.Likes;

@Service("chattingService")
public class ChattingServiceImpl implements ChattingService{

	@Autowired
	private ChattingDao chattingDao;
	
	// 채팅 정보 조회 ServiceImpl
	@Override
	public ArrayList<Chatting> selectChattingInfo(int chat_room_no) {
		return chattingDao.selectChattingInfo(chat_room_no);
	}
	
	// 학생 채팅 정보 조회 ServiceImpl
	@Override
	public UserChattingStudent selectStudent(int chat_room_no) {
		return chattingDao.selectStudent(chat_room_no);
	}

	// 선생님 채팅 정보 조회 ServiceImpl
	@Override
	public UserChattingTutor selectTutor(int chat_room_no) {
		return chattingDao.selectTutor(chat_room_no);
	}
	
	// 채팅방 정보 조회 ServiceImpl
	@Override
	public Chattingroom selectChattingroom(int chat_room_no) {
		return chattingDao.selectChattingroom(chat_room_no);
	}
	
	// 찜목록 정보 조회 ServiceImpl
	@Override
	public Likes selectLikes(Likes likes) {
		return chattingDao.selectLikes(likes);
	}
	
	// 학생 채팅방 정보 조회 ServiceImpl
	@Override
	public StudentChattingroom selectStudentChattingroom(int chat_room_no) {
		return chattingDao.selectStudentChattingroom(chat_room_no);
	}

	// 선생님 채팅방 정보 조회 ServiceImpl
	@Override
	public TutorChattingroom selectTutorChattingroom(int chat_room_no) {
		// TODO Auto-generated method stub
		return chattingDao.selectTutorChattingroom(chat_room_no);
	}

	// 채팅 정보 삭제 ServiceImpl
	@Override
	public int deleteChatting(int chat_room_no) {
		return chattingDao.deleteChatting(chat_room_no);
	}
	
	// 찜목록 정보 삭제 ServiceImpl
	@Override
	public int deleteLikes(Likes likes) {
		return chattingDao.deleteLikes(likes);
	}

	// 신고 정보 추가 ServiceImpl
	@Override
	public int insertBlock(Chattingblock chattingblock) {
		return chattingDao.insertBlock(chattingblock);
	}

	// 찜목록 정보 추가 ServiceImpl
	@Override
	public int insertLikes(Likes likes) {
		return chattingDao.insertLikes(likes);
	}

	// 채팅 정보 추가 ServiceImpl
	@Override
	public int insertChatting(Chatting chatting) {
		return chattingDao.insertChatting(chatting);
	}

	// 채팅방 정보 추가 ServiceImpl
	@Override
	public int insertChattingroom(Chattingroom chattingroom) {
		return chattingDao.insertChattingroom(chattingroom);
	}
}
