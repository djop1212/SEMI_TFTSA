package com.tftsa.itys.detail.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.detail.model.dao.DetailDao;
import com.tftsa.itys.detail.model.vo.AfterPay;
import com.tftsa.itys.detail.model.vo.Detail;
import com.tftsa.itys.detail.model.vo.LikesCheck;
import com.tftsa.itys.detail.model.vo.OpenChat;
import com.tftsa.itys.detail.model.vo.RoomNo;
import com.tftsa.itys.detail.model.vo.TutorDetail;
import com.tftsa.itys.detail.model.vo.TutorLikes;
import com.tftsa.itys.detail.model.vo.TutorQna;

@Service("detailService")
public class DetailServiceImpl implements DetailService{

	
		
	 @Autowired 
	 DetailDao detailDao;
		  
	 @Override 
	 public int reviewInsert(Detail detail) { 
		 return detailDao.reviewInsert(detail); 
     }
	
	 @Override

	 public ArrayList<TutorDetail> tutorProfile(int user_no){
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

	 @Override
	 public Detail reviewOne(int user_no){
		 return detailDao.reviewOne(user_no);
	 }
	 @Override
	 public int deleteReview(Detail detail){
		 return detailDao.deleteReview(detail);
	 }
	 @Override
	 public int tutorSaveInsert(TutorLikes tlikes){
		 return detailDao.tutorSaveInsert(tlikes);
	 }
	 @Override
	 public int tutorSaveCancel(TutorLikes tlikes){
		 return detailDao.tutorSaveCancel(tlikes);
	 }
	 @Override
	 public ArrayList<TutorQna> qnaList(int tutor_no){
		 return detailDao.qnaList(tutor_no);
	 }
	 @Override
	 public int qnaAnswerInsert(TutorQna tutoqna){
		 return detailDao.qnaAnswerInsert(tutoqna);
	 }
	 @Override
	 public int qnaUpdate(TutorQna tqup){
		 return detailDao.qnaUpdate(tqup);
	 }
	 
	 @Override
	 public TutorQna qnaOne(int tutor_no){
		 return detailDao.qnaOne(tutor_no);
	 }
	 
	 @Override
	 public ArrayList<TutorDetail> tutorPic(int user_no){
		 return detailDao.tutorPic(user_no);
	 }
	
	 @Override
	 public TutorLikes tutorSave(LikesCheck lc){
		 return detailDao.tutorSave(lc);
	 }
	 @Override
	 public AfterPay reviewPay(String user_name){
		 return detailDao.reviewPay(user_name);
	 }
	 
	 @Override
	 public TutorDetail tutorNo(int user_no){
		 return detailDao.tutorNo(user_no);
	 }
	 
	 @Override
	 public int openChattingInsert(OpenChat oc){
		 return detailDao.openChattingInsert(oc);
	 }
	 @Override
	 public RoomNo roomNo(RoomNo rn){
		 return detailDao.roomNo(rn);
	 }
	 @Override
	 public RoomNo findRoom(int chat_room_no){
		 return detailDao.findRoom(chat_room_no);
	 }
}
