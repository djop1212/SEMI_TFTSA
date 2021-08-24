<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	//발급받은 키 중 javascript키를 사용해준다.
	Kakao.init('');
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
	function kakaoLogin() {
		Kakao.Auth.login({
			success : function(response) {
				Kakao.API.request({
					url : '/v2/user/me',
					success : function(response) {
						console.log(response)
					},
					fail : function(error) {
						console.log(error)
					},
				})
			},
			fail : function(error) {
				console.log(error)
			},
		})
	}
</script>
</head>
<body class="sub_page">
  <div class="hero_area">
    
    <c:import url="/WEB-INF/views/common/menubar.jsp" />
    
  </div>

  <!-- login section -->

  <section class="login_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">
            <h3>
              '나는 선생이고 너는 학생이야'의 회원이 아니신가요??
            </h3><br>
            <p>
              회원가입하러 가기
            </p>
            <a href="enrollPage.do">
              회원가입
            </a>
          </div><br>
          <div class="detail-box">
            <h3>
            </h3>
            <p>
              SNS 계정으로 로그인하기
            </p>
              <img src="${ pageContext.servletContext.contextPath }/resources/images/member/kakaoLogin.png"
              	onclick="kakaoLogin();" style="cursor:pointer;">      
          </div>
        </div>
        <div class="col-md-6">
          <div class="login_form">
            <h5>
              로그인
            </h5>
            <form action="login.do" method="post">
              <div>
                <input type="userid" placeholder="아이디" />
              </div>
              <div>
                <input type="userpwd" placeholder="비밀번호" />
              </div>
              <button type="submit">로그인</button>
            </form>
            <!-- mypage 넘어가기위한 임시코드 -->
            <a href="myPage.do">마이페이지</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end login section -->

  <c:import url="/WEB-INF/views/common/footer.jsp" />

</body>
</html>