package com.tftsa.itys.chatting.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.chatting.model.vo.Likes;
import com.tftsa.itys.chatting.model.vo.UserTutor;

@Repository("chattingDao")
public class ChattingDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public UserTutor selectChatting(int user_no) {
		return sqlSession.selectOne("chattingMapper.selectChatting", user_no);
	}

	public int deleteChatting(int chat_room_no) {
		return sqlSession.delete("chattingMapper.deleteChatting", chat_room_no);
	}

	public int insertBlock(Chattingblock chattingblock) {
		return sqlSession.insert("chattingMapper.insertBlock", chattingblock);
	}
	
	public int insertLikes(Likes likes) {
		return sqlSession.insert("chattingMapper.insertLikes", likes);
	}
}
