<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/css/ruang-admin.min.css" rel="stylesheet">
</head>
<body>
<!-- Sidebar -->
    <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/itys/adminDashboard.do">
        <div class="sidebar-brand-icon">
          <img src="${ pageContext.servletContext.contextPath }/admin_resources/img/logo/logo.png">
        </div>
        <div class="sidebar-brand-text mx-3">ITYSAdmin</div>
      </a>
      
      <hr class="sidebar-divider my-0">
      <li class="nav-item active">
        <a class="nav-link" href="adminDashboard.do">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Dashboard</span></a>        
      </li>
      
      <hr class="sidebar-divider">
      <li class="nav-item ">
        <a class="nav-link" href="adminMember.do">
          <span>회원관리</span></a>
          
     
      <li class="nav-item ">
        <a class="nav-link" href="adminReview.do">
          <span>리뷰관리</span></a>
          
      <li class="nav-item ">
        <c:url var="selectpaymentall" value="selectpaymentall.do" />
        <a class="nav-link" href="${ selectpaymentall }">
          <span>입금관리</span></a>
          
      <li class="nav-item">
        <c:url var="selectchattingall" value="selectchattingall.do" />
        <a class="nav-link" href="${ selectchattingall }">
          <span>채팅관리</span></a>
          
      <li class="nav-item">
        <a class="nav-link" href="adminCategory.do">
          <span>과목관리</span></a>
          
      <li class="nav-item">
        <a class="nav-link" href="adminKeyword.do">
          <span>키워드관리</span></a>
          

      <div class="version" id="version-ruangadmin"></div>
    </ul>
    <!-- Sidebar -->
</body>
</html>