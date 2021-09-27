<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  

<c:set var="listCount" value="${ requestScope.listCount }" />
<c:set var="startPage" value="${ requestScope.startPage }" />
<c:set var="endPage" value="${ requestScope.endPage }" />
<c:set var="maxPage" value="${ requestScope.maxPage }" />
<c:set var="currentPage" value="${ requestScope.currentPage }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>

<script type="text/javascript">
function showWriteForm(){
	location.href = "${ pageContext.servletContext.contextPath }/bwform.do";
}
</script>
</head>

<body class="sub_page">
  <div class="hero_area">    
    <c:import url="/WEB-INF/views/common/menubar.jsp" />    
  </div>

<!-- 게시판 목록 -->
<hr>

<h2 align="center">게시글 목록 : 총 ${ listCount } 개</h2>

<!-- 게시글 쓰기(등록)은 로그인한 회원만 가능함 -->
<c:if test="${ !empty sessionScope.loginMember }">
	<div style="align:center;text-align:center;">
		<button onclick="showWriteForm();">게시글 작성</button>
	</div>
</c:if>
<br>

<table align="center" border="1" cellspacing="0" width="1000">
<tr>
	<th>글번호</th><th>제목</th><th>작성자</th>
	<th>작성일시</th><th>조회수</th><th>첨부파일</th>
</tr>


<c:forEach items="${ requestScope.list }" var="b">
<tr>
	<td align="center">${ b.board_no }</td>

	<c:url var="ubd" value="bdetail.do">
		<c:param name="board_no" value="${ b.board_no }"/>
		<c:param name="page" value="${ currentPage }" />
	</c:url>
	<td><a href="${ ubd }">${ b.board_title }</a></td>

<td align="center">${  b.board_writer }</td>
<td align="center">
<fmt:formatDate value="${  b.board_date }" type="date" pattern="yyyy-MM-dd" /></td>
<td align="center">${  b.view_cnt }</td>
<td align="center">
<c:if test="${ !empty b.board_original_filename }"> <!-- 첨부파일이 있는경우 -->
◎
</c:if>
<c:if test="${ empty b.board_original_filename }">
&nbsp;
</c:if>
</td>
</tr>
</c:forEach>
</table>
<br>

<!-- 페이징 처리 -->
<div style="text-align:center;">
<c:if test="${ currentPage <= 1 }">
	[처음]&nbsp;
</c:if>
<c:if test="${ currentPage > 1 }">
	<c:url var="ubl" value="/blist.do">
		<c:param name="page" value="1" />
	</c:url>
	<a href="${ ubl }">[처음]</a>
</c:if>

<!-- 이전 그룹으로 이동 처리 -->
<c:if test="${ (currentPage - 10) < startPage and (currentPage - 10) > 1 }">
	<c:url var="ubl2" value="/blist.do">
		<c:param name="page" value="${ startPage - 10 }"/>
	</c:url>
	<a href="${ ubl2 }">[이전그룹]</a>
</c:if>
<c:if test="${ !((currentPage - 10) < startPage and (currentPage - 10) > 1) }">
	[이전그룹]&nbsp;
</c:if>

<!-- 현재 페이지가 속한 페이지그룹의 숫자 출력 처리 -->
<c:forEach var="p" begin="${ startPage }" end="${ endPage }" step="1">
	<c:if test="${ p eq currentPage }">	
		<font color="red" size="4"><b>[${ p }]</b></font>
	</c:if>
	<c:if test="${ p ne currentPage }">
		<c:url var="ubl3" value="/blist.do">
			<c:param name="page" value="${ p }"/>
		</c:url>
		<a href="${ ubl3 }">${ p }</a>
	</c:if>
</c:forEach>

<!-- 다음 그룹으로 이동 처리 -->
<c:if test="${ (currentPage + 10) > endPage && (currentPage + 10) < maxPage }">
	<c:url var="ubl4" value="/blist.do">
		<c:param name="page" value="${ endPage + 10 }"/>
	</c:url>
	<a href="${ ubl4 }">[다음그룹]</a>
</c:if>
<c:if test="${ !((currentPage + 10) > endPage && (currentPage + 10) < maxPage) }">
	[다음그룹]&nbsp;
</c:if>

<!-- 맨끝 페이지로 이동 처리 -->
<c:if test="${ currentPage >= maxPage }">
	[끝]&nbsp;
</c:if>	
<c:if test="${ currentPage < maxPage }">
	<c:url var="ubl5" value="/blist.do">
		<c:param name="page" value="${ maxPage }"/>
	</c:url>
	<a href="${ ubl5 }">[끝]</a>
</c:if>
</div>

<hr>
<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>
