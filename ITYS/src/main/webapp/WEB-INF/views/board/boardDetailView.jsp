<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
    
<c:set var="currentPage" value="${ requestScope.currentPage }" />
<c:set var="board_no" value="${ requestScope.board_no }" />
<c:set var="com_no" value="${ requestScope.com_no }" />     
   
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
<h2 align="center">${ requestScope.board.board_no } 번 게시글 상세보기</h2>
<br>

<!-- 게시글 상세보기 -->
<table align="center" width="500" border="1" cellspacing="0" cellpadding="5">
<tr><th width="120">제&nbsp;&nbsp;&nbsp;&nbsp;목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;${ board.board_title }</tr>

<tr><th>작성자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;${ board.board_writer }</tr>

<tr><th>등록날짜&nbsp;&nbsp;: &nbsp;<fmt:formatDate value="${ board.board_date }" type="date" pattern="yyyy/MM/dd" /></tr>

<tr>
	<th>첨부파일&nbsp;&nbsp;: &nbsp;
		<c:if test="${ !empty board.board_original_filename }">
			<c:url var="ubf" value="/bfdown.do">
				<c:param name="ofile" value="${ board.board_original_filename }"/>
				<c:param name="rfile" value="${ board.board_rename_filename }"/>
			</c:url>		
			<a href="${ ubf }">${ board.board_original_filename }</a>
		</c:if>
		<c:if test="${ empty board.board_original_filename }">
		&nbsp;
		</c:if>

</tr>

<tr><th height="150">${ board.board_content }</tr>

<!-- 게시글 수정/삭제, 댓글달기 -->
<tr><th colspan="2">
<c:if test="${ !empty sessionScope.loginMember }">
	<c:if test="${ loginMember.user_id eq board.board_writer }">
	    <c:url var="ubup" value="/bupview.do">
	    	<c:param name="board_no" value="${ board.board_no }"/>
	    	<c:param name="page" value="${ currentPage }"/>
	    </c:url>
	    <a href="${ ubup }">[게시글 수정]</a>
	    &nbsp; &nbsp; 
	    
	    <c:url var="ubd" value="/bdelete.do">
	    	<c:param name="board_no" value="${ board.board_no }"/>
	    	<c:param name="board_rename_filename" value="${ board.board_rename_filename }"/>
	    </c:url>
	    <a href="${ ubd }">[게시글 삭제]</a>
	    &nbsp; &nbsp; 
   </c:if>
   
  <c:if test="${ loginMember.user_id ne board.board_writer or loginMember.user_id eq board.board_writer }"> 
   		<c:url var="brf" value="/breplyform.do">
   			<c:param name="bnum" value="${ board.board_no }"/>
   			<c:param name="page" value="${ currentPage }"/>
   		</c:url>
		<a href="${ brf }">[댓글 달기]</a>
		<hr>
</c:if>
</c:if>		


<!-- 댓글 상세보기 -->
<div id="reply">
  <ol class="replyList">
    <c:forEach items="${replyList}" var="replyList">
      <li>
        <p>
        작성자 : ${replyList.com_writer}<br />
        작성 날짜 :  <fmt:formatDate value="${replyList.com_date}"  pattern="yyyy-MM-dd"/>
        				<fmt:parseDate value='${list.trading_day}' var='trading_day' pattern='yyyymmdd'/>
						<fmt:formatDate value="${trading_day}" pattern="yyyy.mm.dd"/>
        </p>
        <p>${replyList.com_content}</p>
        
<!-- 댓글 수정/삭제 -->
 <c:if test="${ !empty sessionScope.loginMember }">
	<c:if test="${ loginMember.user_id eq replyList.com_writer }">
 		<c:url var="ubup" value="/rupview.do">
	    	<c:param name="com_no" value="${ replyList.com_no }"/>
	    	<c:param name="board_no" value="${ replyList.board_no }"/>
	    	<c:param name="page" value="${ currentPage }"/>
	    </c:url>
	    <a href="${ ubup }">[댓글 수정]</a>
	    <c:url var="ubd" value="/rdelete.do">
	    	<c:param name="com_no" value="${ replyList.com_no }"/>
	    	<c:param name="board_no" value="${ replyList.board_no }"/>
	    	<c:param name="page" value="${ currentPage }"/>

	    </c:url>
	    <a href="${ ubd }">[댓글 삭제]</a>
     </c:if></c:if>

     </li>
  </c:forEach>    
 </ol> 
</div>

<!-- 목록 돌아가기 -->	
&nbsp; &nbsp; 
<c:url var="ubl" value="/blist.do">  	
  	<c:param name="page" value="${ currentPage }"/>
</c:url>
<button onclick="javascript:location.href='${ ubl }'">목록</button>
</th></tr>
</table>
<hr>
<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>




