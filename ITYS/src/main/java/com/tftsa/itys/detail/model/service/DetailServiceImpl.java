package com.tftsa.itys.detail.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.detail.model.dao.DetailDao;
import com.tftsa.itys.detail.model.vo.Detail;
import com.tftsa.itys.detail.model.vo.ReviewDetail;
import com.tftsa.itys.detail.model.vo.TutorDetail;

@Service("detailService")
public class DetailServiceImpl implements DetailService{

	
		
	 @Autowired 
	 DetailDao detailDao;
		  
	 @Override 
	 public int reviewInsert(Detail detail) { 
		 return detailDao.reviewInsert(detail); 
     }
	
	 @Override
	 public TutorDetail tutorProfile(int user_no){
		 return detailDao.tutorProfile(user_no);
	 }
	 @Override
	 public ArrayList<TutorDetail> tutorPer(int user_no){
		 return detailDao.tutorPer(user_no);
	 }
	 @Override
	 public int tutorReview(int user_no){
		 return detailDao.tutorReview(user_no);
	 }
	 @Override
	 public double avgScore(int user_no){
		 return detailDao.avgScore(user_no);
	 }
	 @Override
	 public ArrayList<Detail> reviewList(int user_no){
		 return detailDao.reviewList(user_no);
	 }
}
