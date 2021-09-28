package com.tftsa.itys.adminKeyword.model.service;

import java.util.ArrayList;

import com.tftsa.itys.adminKeyword.model.vo.AdminKeyword;

public interface AdminKeywordService {
	ArrayList<AdminKeyword> selectAllKeywords(String type_per);
	int deleteKeyword(String type_per);
	int insertKeyword(String type_per);
	int cntKeyword(String type_per);
}