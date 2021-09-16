package com.tftsa.itys.mypage.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.mypage.model.dao.MypageDao;
import com.tftsa.itys.mypage.model.vo.Likes;
import com.tftsa.itys.mypage.model.vo.Student;
import com.tftsa.itys.mypage.model.vo.Tutor;

@Service("mypageService")
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private MypageDao mypageDao;

	@Override
	public ArrayList<Likes> selectList(int user_no) {
		return mypageDao.selectList(user_no);
	}

	@Override
	public int insertTutor(Tutor tutor) {
		return mypageDao.insertTutor(tutor);
	}

	@Override
	public int updateTutorPosition(int user_no) {
		return mypageDao.updateTutorPosition(user_no);
	}

	@Override
	public int insertStudent(Student student) {
		return mypageDao.insertStudent(student);
	}

	@Override
	public int updateStudentPosition(int user_no) {
		return mypageDao.updateStudentPosition(user_no);
	}

	

	
	
}
