package com.tftsa.itys.adminMember.model.service;

import java.util.ArrayList;

import com.tftsa.itys.member.model.vo.Member;

public interface AdminMemberService {
//	Member selectMember(String mid);
	ArrayList<Member> selectAllList(String mid);
//	ArrayList<Member> selectLoggedInUser();
	ArrayList<Member> selectAllStudents(String s_id);
	ArrayList<Member> selectAllTutors(String t_id);
	int deleteMember(String mid);
}