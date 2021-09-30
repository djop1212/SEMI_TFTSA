<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
    
<c:set var="board_no" value="${ requestScope.board_no }" />    
<c:set var="currentPage" value="${ requestScope.currentPage }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

</head>
<body class="sub_page">
  <div class="hero_area">    
    <c:import url="/WEB-INF/views/common/menubar.jsp" />    
  </div>
  <hr>

<h1 align="center">${ board_no } 번글 댓글 달기 페이지</h1>
<form action="breply.do" method="post" >
<input type="hidden" name="board_no" value="${ board_no }">
<input type="hidden" name="page" value="${ currentPage }">
<table align="center" width="500" border="1" cellspacing="0" cellpadding="5">

<tr><th>작성자</th>
   <td><input type="text" name="com_writer" readonly value="${ loginMember.user_id }"></td>
</tr>

<tr><th>내 용</th><td><textarea rows="5" cols="50" name="com_content"></textarea></td></tr>

<tr><th colspan="2">
<input type="submit" value="등록하기"> &nbsp; 
<input type="reset" value="작성취소"> &nbsp;
<input type="button" value="이전 페이지" onclick="javascript:history.go(-1); return false;">
</th></tr>
</table>
</form>
<hr>
<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>