package com.tftsa.itys.chatting.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.chatting.model.vo.Chatting;
import com.tftsa.itys.chatting.model.vo.Chattingroom;
import com.tftsa.itys.chatting.model.vo.UserChattingStudent;
import com.tftsa.itys.chatting.model.vo.UserChattingTutor;
import com.tftsa.itys.mypage.model.vo.Likes;

@Repository("chattingDao")
public class ChattingDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Chatting> selectChattingInfo(int chat_room_no){
		List<Chatting> list = sqlSession.selectList("chattingMapper.selectChattingInfo", chat_room_no);
		return (ArrayList<Chatting>)list;
	}
	
	public UserChattingStudent selectStudent(int chat_room_no) {
		return sqlSession.selectOne("chattingMapper.selectStudent", chat_room_no);
	}

	public UserChattingTutor selectTutor(int chat_room_no) {
		return sqlSession.selectOne("chattingMapper.selectTutor", chat_room_no);
	}
	
	public Chattingroom selectChattingroom(int chat_room_no) {
		return sqlSession.selectOne("chattingMapper.selectChattingroom", chat_room_no);
	}
	
	public Likes selectLikes(Likes likes) {
		return sqlSession.selectOne("chattingMapper.selectLikes", likes);
	}

	public int deleteChatting(int chat_room_no) {
		return sqlSession.delete("chattingMapper.deleteChatting", chat_room_no);
	}
	
	public int deleteLikes(Likes likes) {
		return sqlSession.delete("chattingMapper.deleteLikes", likes);
	}

	public int insertBlock(Chattingblock chattingblock) {
		return sqlSession.insert("chattingMapper.insertBlock", chattingblock);
	}
	
	public int insertLikes(Likes likes) {
		return sqlSession.insert("chattingMapper.insertLikes", likes);
	}
	
	public int insertChatting(Chatting chatting) {
		return sqlSession.insert("chattingMapper.insertChatting", chatting);
	}
	
	public int insertChattingroom(Chattingroom chattingroom) {
		return sqlSession.insert("chattingMapper.insertChattingroom", chattingroom);
	}
}
