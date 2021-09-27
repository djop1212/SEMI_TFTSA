package com.tftsa.itys.adminCategory.model.service;

import java.util.ArrayList;

import com.tftsa.itys.mypage.model.vo.Subject;

public interface AdminCategoryService {
	ArrayList<Subject> selectCategoryAll(String sname);
	int deleteCategory(String sname);
	int insertSubject(Subject subject);
	int cntSubject(String sname);
}
