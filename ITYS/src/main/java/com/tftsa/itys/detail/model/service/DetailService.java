package com.tftsa.itys.detail.model.service;

import java.util.ArrayList;

import com.tftsa.itys.detail.model.vo.Detail;
import com.tftsa.itys.detail.model.vo.ReviewDetail;
import com.tftsa.itys.detail.model.vo.TutorDetail;

public interface DetailService {

	int reviewInsert(Detail detail);
	TutorDetail tutorProfile(int user_no);
	ArrayList<TutorDetail> tutorPer(int user_no);
	int tutorReview(int user_no);
	double avgScore(int user_no);
	ArrayList<Detail> reviewList(int user_no);
}
