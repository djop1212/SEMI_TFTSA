package com.tftsa.itys.detail.model.service;

import java.util.ArrayList;

import com.tftsa.itys.detail.model.vo.Detail;
import com.tftsa.itys.detail.model.vo.TutorLikes;
import com.tftsa.itys.detail.model.vo.TutorDetail;

public interface DetailService {

	int reviewInsert(Detail detail);
	TutorDetail tutorProfile(int user_no);
	ArrayList<TutorDetail> tutorPer(int user_no);
	int tutorReview(int user_no);
	double avgScore(int user_no);
	ArrayList<Detail> reviewList(int user_no);
	Detail reviewOne(int user_no);
	int deleteReview(Detail detail);
	int tutorSaveInsert(TutorLikes tlikes);
}
