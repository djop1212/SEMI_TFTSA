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

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/bootstrap.css" />
  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="${ pageContext.servletContext.contextPath }/resources/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="${ pageContext.servletContext.contextPath }/resources/css/responsive.css" rel="stylesheet" />
</head>

<body>

    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="main.do">
            <h3>
              Joson
            </h3>
            <span> college</span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
  

<%--   		<c:if test="${ sessionScope.loginMember eq null}"> --%>
          <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
            <ul class="navbar-nav  ml-auto">
              <li class="nav-item <c:if test="${ pageContext.request.requestURI eq '/itys/WEB-INF/views/common/course.jsp' }">active</c:if>">
                <a class="nav-link" href="top10.do"> 선생님 찾기 </a>
              </li>
              <li class="nav-item <c:if test="${ pageContext.request.requestURI eq '/itys/WEB-INF/views/common/event.jsp' }">active</c:if>">
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
                <a class="nav-link" href="myPage.do?user_id=${loginMember.user_id }">마이페이지</a>
              </li>
              <li class="nav-item "><%-- <c:if test="${ pageContext.request.requestURI eq '/itys/WEB-INF/views/member/loginPage.jsp' }">active</c:if> --%>
                <a class="nav-link" href="logout.do">로그아웃</a>
              </li>
              </c:if>
              
              <c:if test="${ sessionScope.loginMember eq null}">
              <li class="nav-item <%-- <c:if test="${ pageContext.request.requestURI eq '/itys/WEB-INF/views/member/loginPage.jsp' }">active</c:if> --%>">
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
