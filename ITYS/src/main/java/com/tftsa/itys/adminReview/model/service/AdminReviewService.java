package com.tftsa.itys.adminReview.model.service;

import java.util.ArrayList;

import com.tftsa.itys.adminReview.model.vo.AdminReview;

public interface AdminReviewService {
	ArrayList<AdminReview> selectReviewAll(String user_name);
	int deleteReview(int review_no);
}
