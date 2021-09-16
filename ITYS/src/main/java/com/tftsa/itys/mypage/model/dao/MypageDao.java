package com.tftsa.itys.mypage.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.mypage.model.vo.Likes;
import com.tftsa.itys.mypage.model.vo.Student;

@Repository("mypageDao")
public class MypageDao {
	@Autowired
	private SqlSessionTemplate session;

	public ArrayList<Likes> selectList(int user_no) {
		List<Likes> list = session.selectList("mypageMapper.selectListLikes", user_no);
		return (ArrayList<Likes>)list;
	}

	public int insertTutor(int user_no) {
		return session.insert("mypageMapper.insertTutor", user_no);
	}
	public int updateTutorPosition(int user_no) {
		return session.update("mypageMapper.updateTutorPosition", user_no);
	}

	public int insertStudent(Student student) {
		return session.insert("mypageMapper.insertStudent", student);
	}
	public int updateStudentPosition(int user_no) {
		return session.update("mypageMapper.updateStudentPosition", user_no);
	}
	
	
}
