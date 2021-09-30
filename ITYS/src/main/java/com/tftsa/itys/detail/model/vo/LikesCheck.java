package com.tftsa.itys.detail.model.vo;

public class LikesCheck {
	private int student_no;
		private int tutor_no;
		
		public LikesCheck() {}

		public LikesCheck(int student_no, int tutor_no) {
			super();
			this.student_no = student_no;
			this.tutor_no = tutor_no;
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
			return "LikesCheck [student_no=" + student_no + ", tutor_no=" + tutor_no + "]";
		}
		
}
