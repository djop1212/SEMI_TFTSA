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
		window.open("upSPage.do?user_no=${member.user_no}", "new", "top=100, left=300, width=500, height=650, status=no, menubar=no, toolbar=no, resizable=no");
	}else{
		console.log("tutor");
		window.name = "tutorForm";
		window.open("upTPage.do?user_no=${member.user_no}", "new", "top=100, left=300, width=450, height=600, status=no, menubar=no, toolbar=no, resizable=no");
	}
	//location.reload();
}
function deleteuser(){
	if(confirm("회원탈퇴를 계속 진행하시겠습니까?")== true){
		location.href="deleteUser.do?user_id=${member.user_id}";	
	}else{
		return;
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
								<li><a href="myPage.do" style="color:white; background: #42acae; border-radius:3px;">프로필</a></li>
								<li><a href="">채팅목록</a></li>
								<li><a href="wishl.do?user_no=${user_no }">찜 목록</a></li>
								<li><a href="mclass.do?user_no=${user_no }">내 강의 내역</a></li>
							</ul>
						</div>
						<%-- <c:url var="udelete" value="deleteUser.do">
			            	<c:param name="user_id" value="${loginMember.user_id }"/>
			            </c:url> --%>
			            <br><a style="color:#969ca2;" href="" onclick="deleteuser(); return false;">회원탈퇴</a>
					</div>
					<div id="right">
						<div>
						<table>
							<tr>
								<c:if test="${loginMember.user_position eq 'U'}">
									<td><h4>프로필 추가</h4></td>
									<td width="100px" align="right">
										<input type="radio" name="profile_type" id="student" value="student" onchange="Click()">학생 &nbsp;
									</td>
									<td>
										<input type="radio" name="profile_type" id="tutor" value="tutor" onchange="Click()">선생님
									</td>
								</c:if>
								<c:if test="${loginMember.user_position eq 'S'}">
									<td><h4>학생 프로필 수정</h4></td>
									<td width="100px" align="right">
										<input type="radio" name="profile_type" id="student" value="student" onchange="Click()">학생 &nbsp;
									</td>
								</c:if>
								<c:if test="${loginMember.user_position eq 'T'}">
									<td><h4>선생님 프로필 수정</h4></td>
									<td>
										<input type="radio" name="profile_type" id="tutor" value="tutor" onchange="Click()">선생님
									</td>
								</c:if>
							</tr>
						</table>
						</div><br>
						<div>
							<h4 align="left">내 프로필</h4>
							<table>
								<Tr>
									<td width="100px">이름</td>
									<td>${member.user_name }</td>
								</Tr>
								<Tr>
									<td>아이디</td>
									<td>${member.user_id }</td>
								</Tr>
								<Tr>
									<td>휴대폰번호</td>
									<td>${member.user_phone }</td>
								</Tr>
								<Tr>
									<td>이메일</td>
									<td>${member.user_email }</td>
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