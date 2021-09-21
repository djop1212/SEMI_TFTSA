package com.tftsa.itys.adminKeyword.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.adminKeyword.model.dao.AdminKeywordDao;
import com.tftsa.itys.adminKeyword.model.vo.AdminKeyword;

@Service("adminKeywordService")
public class AdminKeywordServiceImpl implements AdminKeywordService{
	@Autowired
	private AdminKeywordDao keywordDao;

	@Override
	public ArrayList<AdminKeyword> selectAllKeywords() {
		return keywordDao.selectAllKeywords();
	}
}
