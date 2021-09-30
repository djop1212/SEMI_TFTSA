package com.tftsa.itys.adminKeyword.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.adminKeyword.model.dao.AdminKeywordDao;
import com.tftsa.itys.adminKeyword.model.vo.AdminKeyword;

@Service("adminKeywordService")
public class AdminKeywordServiceImpl implements AdminKeywordService{
	@Autowired
	private AdminKeywordDao adminkeywordDao;

	@Override
	public ArrayList<AdminKeyword> selectAllKeywords(String type_per) {
		return adminkeywordDao.selectAllKeywords(type_per);
	}
	
	@Override
	public int deleteKeyword(String type_per) {
		return adminkeywordDao.deleteKeyword(type_per);
	}
	
	@Override
	public int insertKeyword(String type_per) {
		return adminkeywordDao.insertKeyword(type_per);
	}
	
	@Override
	public int cntKeyword(String type_per) {
		return adminkeywordDao.cntKeyword(type_per);
	}
}
