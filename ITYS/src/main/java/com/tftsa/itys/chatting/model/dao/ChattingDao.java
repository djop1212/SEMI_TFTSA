package com.tftsa.itys.chatting.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.chatting.model.vo.Chatting;
import com.tftsa.itys.chatting.model.vo.Chattingroom;
import com.tftsa.itys.chatting.model.vo.StudentChattingroom;
import com.tftsa.itys.chatting.model.vo.TutorChattingroom;
import com.tftsa.itys.chatting.model.vo.UserChattingStudent;
import com.tftsa.itys.chatting.model.vo.UserChattingTutor;
import com.tftsa.itys.mypage.model.vo.Likes;

@Repository("chattingDao")
public class ChattingDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 채팅 정보 조회 Dao
	public ArrayList<Chatting> selectChattingInfo(int chat_room_no){
		List<Chatting> list = sqlSession.selectList("chattingMapper.selectChattingInfo", chat_room_no);
		return (ArrayList<Chatting>)list;
	}
	
	// 학생 채팅 정보 조회 Dao
	public UserChattingStudent selectStudent(int chat_room_no) {
		return sqlSession.selectOne("chattingMapper.selectStudent", chat_room_no);
	}

	// 선생님 채팅 정보 조회 Dao
	public UserChattingTutor selectTutor(int chat_room_no) {
		return sqlSession.selectOne("chattingMapper.selectTutor", chat_room_no);
	}
	
	// 채팅방 정보 조회 Dao
	public Chattingroom selectChattingroom(int chat_room_no) {
		return sqlSession.selectOne("chattingMapper.selectChattingroom", chat_room_no);
	}
	
	// 찜목록 정보 조회 Dao
	public Likes selectLikes(Likes likes) {
		return sqlSession.selectOne("chattingMapper.selectLikes", likes);
	}
	
	// 학생 채팅방 정보 조회 Dao
	public StudentChattingroom selectStudentChattingroom(int chat_room_no) {
		return sqlSession.selectOne("chattingMapper.selectStudentChattingroom", chat_room_no);
	}
	
	// 선생님 채팅방 정보 조회 Dao
	public TutorChattingroom selectTutorChattingroom(int chat_room_no) {
		return sqlSession.selectOne("chattingMapper.selectTutorChattingroom", chat_room_no);
	}

	// 채팅 정보 삭제 Dao
	public int deleteChatting(int chat_room_no) {
		return sqlSession.delete("chattingMapper.deleteChatting", chat_room_no);
	}
	
	// 찜목록 정보 삭제 Dao
	public int deleteLikes(Likes likes) {
		return sqlSession.delete("chattingMapper.deleteLikes", likes);
	}

	// 신고 정보 추가 Dao
	public int insertBlock(Chattingblock chattingblock) {
		return sqlSession.insert("chattingMapper.insertBlock", chattingblock);
	}
	
	// 찜목록 정보 추가 Dao
	public int insertLikes(Likes likes) {
		return sqlSession.insert("chattingMapper.insertLikes", likes);
	}
	
	// 채팅 정보 추가 Dao
	public int insertChatting(Chatting chatting) {
		return sqlSession.insert("chattingMapper.insertChatting", chatting);
	}
	
	// 채팅방 정보 추가 Dao
	public int insertChattingroom(Chattingroom chattingroom) {
		return sqlSession.insert("chattingMapper.insertChattingroom", chattingroom);
	}
}
