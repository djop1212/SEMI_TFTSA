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
								width="120px" height="120px" />
						</div>
						<div style="padding-top: 5px;">
							<ul id="bar">
								<li><a href="myPage.do">프로필</a></li>
								<li><a href="">채팅목록</a></li>
								<li><a href="wishl.do?user_no=${user_no }">찜 목록</a></li>
								<li><a href="mclass.do" style="color:white; background: #42acae; border-radius:3px;">내 강의 내역</a></li>
							</ul>
						</div>
						<div style="color:#969ca2;"><a href="">탈퇴하기</a></div>
					</div>
					<div id="right">
						<div>
							<h4>📋 강의 목록</h4>
						</div><br>
						<div>
							<ul id="wlist">
								<li>
								<table>
									<tr>
									<td valign="top">
										<img
										src="${ pageContext.servletContext.contextPath }/resources/images/member/profileDefault.gif"
										width="75px" height="75px" />
									</td>
									<td style="width:475px; padding-left:15px">
										과외 한 줄 소개<br>
										선생님이름<br>	
										전화번호<br>
										과목<br>
										지역<Br>
										과외시간 <br>
										수업료<br>
										
									</td>
									</tr>
								</table>
								</li>
							</ul>
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