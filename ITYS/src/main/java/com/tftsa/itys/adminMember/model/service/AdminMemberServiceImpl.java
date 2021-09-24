package com.tftsa.itys.adminMember.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.adminMember.model.dao.AdminMemberDao;
import com.tftsa.itys.member.model.vo.Member;

@Service("adminMemberService")
public class AdminMemberServiceImpl implements AdminMemberService{
	@Autowired
	private AdminMemberDao memberDao;

	@Override
	public ArrayList<Member> selectAllList() {
		return memberDao.selectAllList();
	}

//	@Override
//	public Member selectMember(int mid) {
//		return memberDao.selectMember(mid);
//	}
//	
	@Override
	public int deleteMember(String mid) {
		return memberDao.deleteMember(mid);
	}
//
//	@Override
//	public ArrayList<Member> selectLoggedInUser() {
//		return memberDao.selectLoggedInUser();
//	}

	@Override
	public ArrayList<Member> selectAllStudents() {
		return memberDao.selectAllStudents();
	}

	@Override
	public ArrayList<Member> selectAllTutors() {
		return memberDao.selectAllTutors();
	}
}
