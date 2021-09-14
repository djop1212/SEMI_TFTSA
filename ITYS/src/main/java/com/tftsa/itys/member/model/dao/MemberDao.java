package com.tftsa.itys.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.member.model.vo.Member;

@Repository("memberDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate session;
	
	public int insertUser(Member member) {
		return session.insert("memberMapper.insertUser", member);
	}
	
	public int deleteUser(String user_id) {
		return session.delete("memberMapper.deleteUser", user_id);
	}
	
	public Member selectUser(String user_id) {
		return session.selectOne("memberMapper.selectUser", user_id);
	}

	public int selectIdCheck(String user_id) {
		return session.selectOne("memberMapper.selectIdCheck", user_id);
	}

	public String selectUserId(String user_email) throws Exception {
		return session.selectOne("memberMapper.selectUserId", user_email);
	}

	public int updateUserPwd(Member member) {
		return session.update("memberMapper.updateUserPwd", member);
	}

}
