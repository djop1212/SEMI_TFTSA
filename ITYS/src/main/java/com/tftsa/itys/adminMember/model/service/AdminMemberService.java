package com.tftsa.itys.adminMember.model.service;

import java.util.ArrayList;

import com.tftsa.itys.member.model.vo.Member;

public interface AdminMemberService {
//	Member selectMember(int mid);
	ArrayList<Member> selectAllList();
//	ArrayList<Member> selectLoggedInUser();
	ArrayList<Member> selectAllStudents();
	ArrayList<Member> selectAllTutors();
//	int deleteMember(int mid);
}