<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<script type="text/javascript" src="${pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function Click(){
	if($("input:radio[id='student']").is(":checked")==true){
		console.log("student");
		window.name = "studentForm";
		window.open("upsprofile.do", "new", "top=100, left=300, width=450, height=600, status=no, menubar=no, toolbar=no, resizable=no");
	}else{
		console.log("tutor");
		window.name = "tutorForm";
		window.open("uptprofile.do", "new", "top=100, left=300, width=450, height=600, status=no, menubar=no, toolbar=no, resizable=no");
	}
}
</script>
<style type="text/css">
div#left{
	width: 200px;
	margin:5px;
}
div#right{
	border-left:1px solid #cbcbcb;
	width: 600px;
	margin:5px;
	flex: 1.4;
	padding: 10px 0;
	padding-left: 50px;
	align-items: baseline !important;
}
ul{
	padding-inline-start:0;
}
ul#bar{
	list-style:none;
}
ul#bar li{
	/* float:center; */
	width:170px;
	height:30px;
	padding:2px;
}
ul#bar li a{
	text-decoration:none;
	width:120px;
	height:30px;
	display: block;
	text-align:center;
	margin:0;
	color: #343a40;
}
ul#bar li a:hover{
	width:120px;
	height: 30px;
	text-decoration:none;
	color:white;
	background: #42acae;
	text-align:center;
	margin:0;	
	display: block;
	border-radius:3px;
}
div.box {
	padding-top: 15px; 
	width:950px !important; 
	align:center;
}
</style>
</head>

<body class="sub_page">
	<div class="hero_area">

		<c:import url="/WEB-INF/views/common/menubar.jsp" />

	</div>
	<!-- event section -->
	<section class="event_section layout_padding">
		<div class="container">
			<div align="center" class="heading_container">
				<h3>마이페이지</h3>
				<!-- <p>Upcoming Education Events to feed your brain.</p> -->
			</div>
			<div class="event_container" align="center">
				<div class="box">
					<div id="left">
						<div>
							<img
								src="${ pageContext.servletContext.contextPath }/resources/images/event-img.jpg"
								width="120px" height="120px" />
						</div>
						<div style="padding-top: 5px;">
							<ul id="bar">
								<li><a href="">프로필</a></li>
								<li><a href="">채팅목록</a></li>
								<li><a href="">찜 목록</a></li>
								<li><a href="">내 강의 내역</a></li>
							</ul>
						</div>
						<div style="color:#969ca2;"><a href="">탈퇴하기</a></div>
					</div>
					<div id="right">
						<div>
						<table>
							<tr>
								<td><h4>프로필 추가</h4></td>
								<td width="100px" align="right">
									<input type="radio" name="profile_type" id="student" value="student" onchange="Click()">학생 &nbsp;
								</td>
								<td>
									<input type="radio" name="profile_type" id="tutor" value="tutor" onchange="Click()">선생님
								</td>
							</tr>
						</table>
						</div><br>
						<div>
							<h4 align="left">내 프로필</h4>
							<table>
								<Tr>
									<td width="100px">닉네임</td>
									<td>뽀로로24</td>
								</Tr>
								<Tr>
									<td>휴대폰번호</td>
									<td>010-2008-0904</td>
								</Tr>
								<Tr>
									<td>과외정보</td>
									<td>매주 수, 토 14:00 ~ 16:00</td>
								</Tr>
							</table>
						</div>
						<div class="btn-box" align="center">
							<a href="">수정하기</a>
						</div>
					</div>
				</div>
				
			</div>

		</div>
	</section>

	<!-- end event section -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />

</body>
</html>