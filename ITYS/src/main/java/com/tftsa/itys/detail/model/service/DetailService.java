package com.tftsa.itys.detail.model.service;

import java.util.ArrayList;

import com.tftsa.itys.detail.model.vo.Detail;
import com.tftsa.itys.detail.model.vo.TutorLikes;
import com.tftsa.itys.detail.model.vo.TutorQna;

import com.tftsa.itys.detail.model.vo.TutorDetail;

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
	int qnaAnswerInsert(TutorQna tq);
	int qnaUpdate(TutorQna tqup);
	TutorQna qnaOne(int tutor_no);
	ArrayList<TutorDetail> tutorPic(int user_no);
	int tutorSaveCancel(TutorLikes tlikes);
	TutorLikes tutorSave(int student_no);
	Detail reviewPay(int student_no);


}
