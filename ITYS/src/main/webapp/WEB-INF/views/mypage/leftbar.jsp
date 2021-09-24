<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
div#left{
	/* width: 250px !important; */
	margin: 5px;
	-webkit-box-flex: 0.5;
      -ms-flex: 0.5;
          flex: 0.5;
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
img{
	width: 120px;
	height: 120px;
	object-fit: cover;
}
</style>
</head>
<body>
<div id="left">
						<div>
							<c:if test="${pic eq null }">
								<img alt="" src="${ pageContext.servletContext.contextPath }/resources/images/member/profileDefault.gif">
							</c:if>
							<c:if test="${pic ne null and member.user_position eq 'S'}">
								<img alt="" src="${ pageContext.servletContext.contextPath }/resources/images/mypage/studentImg/${student.pic}">
							</c:if>
							<c:if test="${pic ne null and member.user_position eq 'T'}">
								<img alt="" src="${ pageContext.servletContext.contextPath }/resources/images/mypage/tutorImg/${tutor.pic}">
							</c:if>
						</div>
						<div style="padding-top: 5px;">
							<ul id="bar">
								<li><a href="myPage.do?user_id=${loginMember.user_id }" style="color:white; background: #42acae; border-radius:3px;">프로필</a></li>
								<li><a href="clist.do?user_no=${loginMember.user_no }">채팅목록</a></li>
								<li><a href="wishl.do?user_no=${loginMember.user_no }">찜 목록</a></li>
								<li><a href="mclass.do?user_no=${loginMember.user_no }">내 강의 내역</a></li>
							</ul>
						</div>
			            <br><a style="color:#969ca2;" href="" onclick="deleteuser(); return false;">회원탈퇴</a>
					</div>

</body>
</html>