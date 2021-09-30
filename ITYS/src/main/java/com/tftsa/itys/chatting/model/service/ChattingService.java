package com.tftsa.itys.chatting.model.service;

import java.util.ArrayList;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.chatting.model.vo.Chatting;
import com.tftsa.itys.chatting.model.vo.Chattingroom;
import com.tftsa.itys.chatting.model.vo.StudentChattingroom;
import com.tftsa.itys.chatting.model.vo.TutorChattingroom;
import com.tftsa.itys.chatting.model.vo.UserChattingStudent;
import com.tftsa.itys.chatting.model.vo.UserChattingTutor;
import com.tftsa.itys.mypage.model.vo.Likes;

public interface ChattingService {
	ArrayList<Chatting> selectChattingInfo(int chat_room_no); // 채팅 정보 조회 Service
	UserChattingStudent selectStudent(int chat_room_no); // 학생 채팅 정보 조회 Service
	UserChattingTutor selectTutor(int chat_room_no); // 선생님 채팅 정보 조회 Service
	Chattingroom selectChattingroom(int chat_room_no); // 채팅방 정보 조회 Service
	Likes selectLikes(Likes likes); // 찜목록 정보 조회 Service
	StudentChattingroom selectStudentChattingroom(int chat_room_no); // 학생 채팅방 정보 조회 Service
	TutorChattingroom selectTutorChattingroom(int chat_room_no); // 선생님 채팅방 정보 조회 Service
	int deleteChatting(int chat_room_no); // 채팅 정보 삭제 Service
	int deleteLikes(Likes likes); // 찜목록 정보 삭제 Service
	int insertBlock(Chattingblock chattingblock); // 신고 정보 추가 Service
	int insertLikes(Likes likes); // 찜목록 정보 추가 Service
	int insertChatting(Chatting chatting); // 채팅 정보 추가 Service
	int insertChattingroom(Chattingroom chattingroom); // 채팅방 정보 추가 Service
}
