package com.tftsa.itys.mypage.model.service;

import java.util.ArrayList;

import com.tftsa.itys.mypage.model.vo.Likes;
import com.tftsa.itys.mypage.model.vo.Student;
import com.tftsa.itys.mypage.model.vo.Tutor;

public interface MypageService {

	ArrayList<Likes> selectList(int user_no);
	int insertTutor(int user_no);
	int updateTutorPosition(int user_no);
	int insertStudent(Student student);
	int updateStudentPosition(int user_no);

}
