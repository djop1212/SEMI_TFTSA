package com.tftsa.itys.adminMember.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.adminMember.model.dao.MemberDao;
import com.tftsa.itys.adminMember.model.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao memberDao;

	@Override
	public ArrayList<Member> selectAllList() {
		return memberDao.selectAllList();
	}

	@Override
	public Member selectMember(int mid) {
		return memberDao.selectMember(mid);
	}
	
	@Override
	public int deleteMember(int mid) {
		return 0;
	}

	@Override
	public ArrayList<Member> selectLoggedInUser() {
		return memberDao.selectLoggedInUser();
	}

	@Override
	public ArrayList<Member> selectAllStudents() {
		return memberDao.selectAllStudents();
	}

	@Override
	public ArrayList<Member> selectAllTutors() {
		return memberDao.selectAllTutors();
	}

}
