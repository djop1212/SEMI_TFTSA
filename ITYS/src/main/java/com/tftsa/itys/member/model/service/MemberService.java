package com.tftsa.itys.member.model.service;

import com.tftsa.itys.member.model.vo.Member;

public interface MemberService {

	int insertUser(Member member);
	int deleteUser(String user_id);
	Member selectUser(String user_id);
//	String selectUserId(String user_email);
//	String selectUserPwd(String user_email);
	int selectIdCheck(String user_id);
}
