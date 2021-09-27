<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>아이디찾기</title>
<style type="text/css">
.loginForm{
	padding : 30px 15px;
	background-color: rgba(255, 255, 255, 0.25);
	text-align: center;
	border-radius: 15px;
}
.loginForm form input {
    height: 40px;
    padding-left: 15px;
    border: none;
    outline: none;
    border-radius: 5px;
    margin: 10px 0;
}
.loginForm form button {
    display: inline-block;
    padding: 7px 45px;
    background-color: #252525;
    border: 1px solid #252525;
    color: #ffffff;
    margin-top: 25px;
    font-size: 15px;
    text-transform: uppercase;
    font-weight: bold;
}
.id_ok{color:#fff; display: none;}
.id_already{color:#6A82FB; display: none;}
</style>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script>

</script>
</head>


<body class="sub_page">
	<div class="hero_area">

		<c:import url="/WEB-INF/views/common/menubar.jsp" />

	</div>

	<!-- login section -->

	<section class="login_section layout_padding">
		<div class="container">
			<!-- <div class="row"> -->
			<center>
				<div class="col-md-6">
					<div class="loginForm">
						<h5>아이디 찾기</h5>
						<form action="findId.do" method="post">
						회원가입시 입력한 이메일을 입력해주세요
							<div style="padding-top: 10px;">Email
								<input type="text" id="user_email" name="user_email" required>
							</div>
							<button type="submit">아이디 찾기</button>
						</form><Br>
						<a href="findPwdPage.do">비밀번호찾기</a> | <a href="loginPage.do">로그인하기</a> | <a href="enrollPage.do">회원가입</a>
					</div>
				</div>
			</center>

		</div>
	</section>

	<!-- end login section -->

	<c:import url="/WEB-INF/views/common/footer.jsp" />

</body>

</html>