package com.tftsa.itys.adminMember.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.member.model.vo.Member;

@Repository("adminMemberDao")
public class AdminMemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	//모든 회원 조회
	public ArrayList<Member> selectAllList(String mid){
		List<Member> list = sqlSession.selectList("adminmemberMapper.selectAllList", mid);
		return (ArrayList<Member>)list;
	}
	//회원 삭제
	public int deleteMember(String mid) {
		return sqlSession.delete("adminmemberMapper.deleteMember", mid);
	}
	
//	//로그인한 사용자만 출력
//	public ArrayList<Member> selectLoggedInUser() {
//		List<Member> list = sqlSession.selectList("memberMapper.selectLoggedInUser");
//		return (ArrayList<Member>)list;
//	}
	
	//학생 검색
	public ArrayList<Member> selectAllStudents(String sid) {
		List<Member> list = sqlSession.selectList("adminmemberMapper.selectAllStudents",sid);
		return (ArrayList<Member>)list;
	}
	
	//선생님 검색
	public ArrayList<Member> selectAllTutors(String tid) {
		List<Member> list = sqlSession.selectList("adminmemberMapper.selectAllTutors",tid);
		return (ArrayList<Member>)list;
	}	
}