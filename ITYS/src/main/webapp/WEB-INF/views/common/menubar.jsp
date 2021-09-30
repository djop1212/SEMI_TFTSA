<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title></title>


    <link rel="preload" as="style" href="https://fonts.googleapis.com/css2?family=Coming+Soon&family=Nanum+Gothic+Coding&display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Coming+Soon&family=Nanum+Gothic+Coding&display=swap">
    
    <!--폰트 : "Iropke Batang"-->
    <link rel="preload" as="style" href="https://cdn.jsdelivr.net/font-iropke-batang/1.2/font-iropke-batang.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/font-iropke-batang/1.2/font-iropke-batang.css">

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/bootstrap.css" />
  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="${ pageContext.servletContext.contextPath }/resources/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="${ pageContext.servletContext.contextPath }/resources/css/responsive.css" rel="stylesheet" />
  
  <style type="text/css">
  
@font-face {
    font-family: 'KoPubDotumMedium';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/KoPubDotumMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
img{
	object-fit: cover ; 
}

* {
	font-family: 'KoPubDotumMedium', gulim, dotum, sans-serif;
}
  
  </style>
</head>


<body>

    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a  class="navbar-brand" href="top10.do">
            <img src="${ pageContext.servletContext.contextPath }/resources/images/logo.png" width="154" height="70">
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
  

<%--   		<c:if test="${ sessionScope.loginMember eq null}"> --%>
          <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
            <ul class="navbar-nav  ml-auto">

              <li class="nav-item <c:if test="${ pageContext.request.requestURI eq '/itys/WEB-INF/views/search/tutor_search.jsp' }">active</c:if>">
                <a class="nav-link" href="top10.do"> 선생님 찾기 </a>
              </li>
              <li class="nav-item <c:if test="${ pageContext.request.requestURI eq '/itys/WEB-INF/views/board/boardListView.jsp' }">active</c:if>">
                <a class="nav-link" href="${ pageContext.servletContext.contextPath }/blist.do?page=1"> 질문하기 </a>   
              </li>
              <li class="nav-item <c:if test="${ pageContext.request.requestURI eq '/itys/WEB-INF/views/common/info.jsp' }">active</c:if>">
                <a class="nav-link" href="info.do"> 고객센터 </a>
              </li>         
              
              <c:if test="${ !empty sessionScope.loginMember and sessionScope.loginMember.user_position eq 'M' }">
              <li class="nav-item <c:if test="${ pageContext.request.requestURI eq '/itys/WEB-INF/views/common/contact.jsp' }">active</c:if>">
                <a class="nav-link" href="adminDashboard.do">관리자 페이지</a>
              </li>
              <li class="nav-item "><%-- <c:if test="${ pageContext.request.requestURI eq '/itys/WEB-INF/views/member/loginPage.jsp' }">active</c:if> --%>
                <a class="nav-link" href="logout.do">로그아웃</a>
              </li>
              </c:if>
              
              <c:if test="${ !empty sessionScope.loginMember and sessionScope.loginMember.user_position ne 'M'}">
              <li class="nav-item <c:if test="${ pageContext.request.requestURI eq '/itys/WEB-INF/views/mypage/myPage.jsp' }">active</c:if>">
                <a class="nav-link" href="myPage.do?user_no=${loginMember.user_no }">마이페이지</a>
              </li>
              <li class="nav-item "><%-- <c:if test="${ pageContext.request.requestURI eq '/itys/WEB-INF/views/member/loginPage.jsp' }">active</c:if> --%>
                <a class="nav-link" href="logout.do">로그아웃</a>
              </li>
              </c:if>
              
              <c:if test="${ sessionScope.loginMember eq null}">
              <li class="nav-item <c:if test="${ pageContext.request.requestURI eq '/itys/WEB-INF/views/member/loginPage.jsp' }">active</c:if>">
                <a class="nav-link" href="loginPage.do">로그인</a>
              </li>
              </c:if>
            </ul>
<%-- </c:if> --%>

            <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
              <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
            </form>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
          

</body>
</html>
