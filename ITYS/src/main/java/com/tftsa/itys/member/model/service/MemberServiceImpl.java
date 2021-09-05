package com.tftsa.itys.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.member.model.dao.MemberDao;
import com.tftsa.itys.member.model.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDao memberDao;

	
//	@Override
//	public Member selectLogin(Member member) {
//		return memberDao.selectLogin(member);
//	}

	@Override
	public int insertUser(Member member) {
		return memberDao.insertUser(member);
	}

//	@Override
//	public int deleteUser(String user_id) {
//		return memberDao.deleteUser(user_id);
//	}
//
//	@Override
//	public Member selectUser(String user_id) {
//		return memberDao.selectUser(user_id);
//	}
//
//	@Override
//	public String selectUserId(String user_email) {
//		return memberDao.selectUserId(user_emial);
//	}
//
//	@Override
//	public String selectUserPwd(String user_email) {
//		return memberDao.selectUserPwd(user_email);
//	}


	

}
