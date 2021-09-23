package com.tftsa.itys.mypage.model.service;

import java.util.ArrayList;

import javax.security.auth.Subject;

import com.tftsa.itys.member.model.vo.Member;
import com.tftsa.itys.mypage.model.vo.Likes;
import com.tftsa.itys.mypage.model.vo.Student;
import com.tftsa.itys.mypage.model.vo.SubData;
import com.tftsa.itys.mypage.model.vo.Tutor;

public interface MypageService {

	ArrayList<Likes> selectLikesList(int user_no);
	int insertTutor(Tutor tutor);
	int updateTutorPosition(int user_no);
	int insertStudent(Student student);
	int updateStudentPosition(int user_no);
	int insertSubData(SubData subdata);
	String selectSubName(int sub_no);
	int updateMember(Member member);
	int updateStudent(Student student);
	int updateTutor(Tutor tutor);
	Member selectUser(String user_id);
	Student selectStudent(int user_no);
	Tutor selectTutor(int user_no);
	ArrayList<Subject> selectSubjectList();
	String selectPosition(int user_no);
	int deleteSubData(int user_no);

}
