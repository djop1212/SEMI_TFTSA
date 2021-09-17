package com.tftsa.itys.detail.model.vo;



public class TutorLikes {
	private static final long serialVersionUID = 6661L;
	 		private int like_no;
	 		private int student_no;
	 		private int tutor_no;
	 		
	 		public TutorLikes() {}

			public TutorLikes(int like_no, int student_no, int tutor_no) {
				super();
				this.like_no = like_no;
				this.student_no = student_no;
				this.tutor_no = tutor_no;
			}

			public int getLike_no() {
				return like_no;
			}

			public void setLike_no(int like_no) {
				this.like_no = like_no;
			}

			public int getStudent_no() {
				return student_no;
			}

			public void setStudent_no(int student_no) {
				this.student_no = student_no;
			}

			public int getTutor_no() {
				return tutor_no;
			}

			public void setTutor_no(int tutor_no) {
				this.tutor_no = tutor_no;
			}

			@Override
			public String toString() {
				return "TutorLikes [like_no=" + like_no + ", student_no=" + student_no + ", tutor_no=" + tutor_no + "]";
			}
	 		
	 		
	 		
}
