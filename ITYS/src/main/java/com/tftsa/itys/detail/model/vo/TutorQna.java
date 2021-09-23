package com.tftsa.itys.detail.model.vo;


public class TutorQna {
	
	private static final long serialVersionUID = 5551L;
	 		private int tutor_no;
	 		private String answer1;
	 		private String answer2;
	 		private String answer3;
	 		private String answer4;
	 		
	 		public TutorQna() {}

			public TutorQna(int tutor_no, String answer1, String answer2, String answer3, String answer4) {
				super();
				this.tutor_no = tutor_no;
				this.answer1 = answer1;
				this.answer2 = answer2;
				this.answer3 = answer3;
				this.answer4 = answer4;
			}

			public int getTutor_no() {
				return tutor_no;
			}

			public void setTutor_no(int tutor_no) {
				this.tutor_no = tutor_no;
			}

			public String getAnswer1() {
				return answer1;
			}

			public void setAnswer1(String answer1) {
				this.answer1 = answer1;
			}

			public String getAnswer2() {
				return answer2;
			}

			public void setAnswer2(String answer2) {
				this.answer2 = answer2;
			}

			public String getAnswer3() {
				return answer3;
			}

			public void setAnswer3(String answer3) {
				this.answer3 = answer3;
			}

			public String getAnswer4() {
				return answer4;
			}

			public void setAnswer4(String answer4) {
				this.answer4 = answer4;
			}

			public static long getSerialversionuid() {
				return serialVersionUID;
			}

			@Override
			public String toString() {
				return "TutorQna [tutor_no=" + tutor_no + ", answer1=" + answer1 + ", answer2=" + answer2 + ", answer3="
						+ answer3 + ", answer4=" + answer4 + "]";
			}

	 		
	 		
	 		
}
