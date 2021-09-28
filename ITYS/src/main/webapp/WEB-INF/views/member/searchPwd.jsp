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
.loginForm input {
    height: 40px;
    padding-left: 15px;
    border: none;
    outline: none;
    border-radius: 5px;
    margin: 10px 0;
}
.loginForm button {
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
$(function(){
	$("#findBtn").click(function(){
		$.ajax({
			url : "findPwd.do",
			type : "POST",
			data : {
				user_id : $("#user_id").val(),
				user_email : $("#user_email").val()
			},
			success : function(result) {
				alert(result);
			},
		})
	});
})
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
						<h5>비밀번호 찾기</h5>
							<div style="padding-top: 5px;">아이디
								<input type="text" id="user_id" name="user_id" required>
							</div>
							<div style="padding-top: 5px;">이메일
								<input type="text" id="user_email" name="user_email" required>
							</div>
							<button type="submit" id="findBtn">비밀번호 찾기</button>
						<Br>
						<a href="findIdPage.do">아이디찾기</a> | <a href="loginPage.do">로그인하기</a> | <a href="enrollPage.do">회원가입</a>
					</div>
				</div>
			</center>
		</div>
	</section>

	<!-- end login section -->

	<c:import url="/WEB-INF/views/common/footer.jsp" />

</body>

</html>