package com.tftsa.itys.adminMember.model.service;

import java.util.ArrayList;
import com.tftsa.itys.adminMember.model.vo.Member;

public interface MemberService {
	Member selectMember(int mid);
	ArrayList<Member> selectAllList();
	ArrayList<Member> selectLoggedInUser();
	ArrayList<Member> selectAllStudents();
	ArrayList<Member> selectAllTutors();
	int deleteMember(int mid);
}