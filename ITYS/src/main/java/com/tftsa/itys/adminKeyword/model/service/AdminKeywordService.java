package com.tftsa.itys.adminKeyword.model.service;

import java.util.ArrayList;

import com.tftsa.itys.adminKeyword.model.vo.AdminKeyword;

public interface AdminKeywordService {
	ArrayList<AdminKeyword> selectAllKeywords();
}