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

</script>
<style type="text/css">
hr{
	margin-top: 5px !important;
	margin-bottom: 5px !important;
}
div#left{
	/* width: 250px !important; */
	margin: 5px;
	-webkit-box-flex: 0.5;
      -ms-flex: 0.5;
          flex: 0.5;
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
ul#wlist{
	list-style: none;
}
ul#wlist li{
	padding-top: 2px;
	padding-bottom: 2px;
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
	width:900px !important; 
	
}
.event_section .event_container .box {
	align-items: flex-start !important;
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
			<div class="heading_container" style="padding-left: 130px;">
				<h3 style="padding-left: 15px;">마이페이지</h3>
			</div>
			<div class="event_container" align="center">
				<div class="box">
					<div id="left">
						<div>
							<img
								src="${ pageContext.servletContext.contextPath }/resources/images/member/profileDefault.gif"
								width="120px" height="120px"/>
						</div>
						<div style="padding-top: 5px;">
							<ul id="bar">
								<li><a href="myPage.do?user_id=${loginMember.user_id }">프로필</a></li>
								<li><a href="clist.do?user_no=${loginMember.user_no }" style="color:white; background: #42acae; border-radius:3px;">채팅목록</a></li>
								<li><a href="wishl.do?user_no=${loginMember.user_no }">찜 목록</a></li>
								<li><a href="mclass.do?user_no=${loginMember.user_no }">내 강의 내역</a></li>
							</ul>
						</div>
						<div style="color:#969ca2;"><a href="">탈퇴하기</a></div>
					</div>
					<div id="right">
						<div>
						
							<h4>채팅 목록</h4>
						</div><br>
						<div>
							<ul id="wlist">
								<li>
								<c:if test="${ requestScope.userchattingroomtutor != null }">
								<c:forEach items="${ requestScope.userchattingroomtutor }" var="ucrt">
								<table>
									<tr>
									<td style="width:475px; padding-left:15px; cursor: pointer;" onclick="location.href='selectChatting.do?chat_room_no=${ ucrt.chat_room_no }'">
										선생님이름 : ${ ucrt.tutor_name }<br>	
										과외 한 줄 소개 : ${ ucrt.intro }<br>
										전화번호 : ${ ucrt.user_phone }<br>
										과목 : ${ ucrt.sub_name }<br>
										지역 : ${ ucrt.area }<Br>
									</td>
									<td style="align: right;"><input type="checkbox"></td>
									</tr>
								</table><hr>
								</c:forEach>
								</c:if>
								<c:if test="${ requestScope.userchattingroomstudent != null }">
								<c:forEach items="${ requestScope.userchattingroomstudent }" var="ucrt">
								<table>
									<tr>
									<td style="width:475px; padding-left:15px; cursor: pointer;" onclick="location.href='selectChatting.do?chat_room_no=${ ucrt.chat_room_no }'">
										학생이름 : ${ ucrt.student_name }<br>	
										학년 : ${ ucrt.stu_job }<br>
										과외 가능 요일 : ${ ucrt.day }<br>
										과외 가능 시간 : ${ ucrt.time }<br>
										바라는 점 : ${ ucrt.stu_wish }<Br>
									</td>
									<td style="align: right;"><input type="checkbox"></td>
									</tr>
								</table><hr>
								</c:forEach>
								</c:if>
								</li>
								
							</ul>
						</div>
						<div class="btn-box" align="center">
							<a href="">삭제하기</a>
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