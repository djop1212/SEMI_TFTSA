package com.tftsa.itys.detail.model.service;

import java.util.ArrayList;

import com.tftsa.itys.detail.model.vo.AfterPay;
import com.tftsa.itys.detail.model.vo.Detail;
import com.tftsa.itys.detail.model.vo.LikesCheck;
import com.tftsa.itys.detail.model.vo.OpenChat;
import com.tftsa.itys.detail.model.vo.RoomNo;
import com.tftsa.itys.detail.model.vo.TutorDetail;
import com.tftsa.itys.detail.model.vo.TutorLikes;
import com.tftsa.itys.detail.model.vo.TutorQna;

public interface DetailService {

	int reviewInsert(Detail detail);
	ArrayList<TutorDetail> tutorProfile(int user_no);
  ArrayList<TutorDetail> tutorPer(int user_no);
	int tutorReview(int user_no);
	double avgScore(int user_no);
	ArrayList<Detail> reviewList(int user_no);
  Detail reviewOne(int user_no);
	int deleteReview(Detail detail);
	int tutorSaveInsert(TutorLikes tlikes);
	ArrayList<TutorQna> qnaList(int tutor_no);
	int qnaAnswerInsert(TutorQna tutoqna);
	int qnaUpdate(TutorQna tqup);
	TutorQna qnaOne(int tutor_no);
	ArrayList<TutorDetail> tutorPic(int user_no);
	int tutorSaveCancel(TutorLikes tlikes);
	TutorLikes tutorSave(LikesCheck lc);
	AfterPay reviewPay(String user_name);
	TutorDetail tutorNo(int user_no);
	int openChattingInsert(OpenChat oc);
	RoomNo roomNo(RoomNo rn);
	RoomNo findRoom(int chat_room_no);


}
