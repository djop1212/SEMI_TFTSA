<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="/WEB-INF/views/common/menubar.jsp" />
<hr>
<h1 align="center">${ requestScope.board.board_no } 번 댓글 수정 페이지</h1>
<!-- 원글 수정 폼 -->
<%-- <c:if test="${ board.board_level eq 1 }"> --%>
	<!-- form 에서 입력값들과 파일을 같이 전송하려면 
	    반드시 enctype="multipart/form-data" 속성을 추가해야 함 -->
	<form action="rup.do" method="post">
	<input type="hidden" name="com_no" value="${ reply.com_no }">
	<input type="hidden" name="page" value="${ currentPage }">
	<%-- <input type="hidden" name="board_original_filename" value="${ board.board_original_filename }">
	<input type="hidden" name="board_rename_filename" value="${ board.board_rename_filename }"> --%>
	<table align="center" width="500" border="1" cellspacing="0" 
	cellpadding="5">
	<%-- <tr><th width="120">제 목</th>
	   <td><input type="text" name="board_title" size="50" value="${ board.board_title }"></td>
	</tr> --%>
	<tr><th>작성자</th>
	   <td><input type="text" name="com_writer" ></td>
	   															<!-- readonly value="${ board.board_writer }" -->
	</tr>
	<tr><th>내 용</th>
	<td><textarea rows="5" cols="50" name="com_content">${ reply.com_content }</textarea></td></tr>
	<tr><th colspan="2">
	<input type="submit" value="수정하기"> &nbsp; 
	<input type="reset" value="작성취소"> &nbsp;
	<input type="button" value="이전 페이지로 이동" onclick="javascript:history.go(-1); return false;">
	</th></tr>
	</table>
	</form>
<%-- </c:if> --%>
	</body>
</html>