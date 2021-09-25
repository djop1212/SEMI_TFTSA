package com.tftsa.itys.adminReview.model.service;

import java.util.ArrayList;

import com.tftsa.itys.adminReview.model.vo.AdminReview;

public interface AdminReviewService {
	ArrayList<AdminReview> selectReviewAll();
	int deleteReview(int review_no);
}
