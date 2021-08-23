<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body class="sub_page">
  <div class="hero_area">
    
    <c:import url="/WEB-INF/views/common/menubar.jsp" />
    
  </div>

  <!-- login section -->

  <section class="login_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">
            <h3>
              GET ONLINE COURSES FOR FREE
            </h3>
            <p>
              Create your free account now and get immediate access to 100s of
              online courses
            </p>
            <a href="">
              REGISTER NOW
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="login_form">
            <h5>
              로그인
            </h5>
            <form action="">
              <div>
                <input type="userid" placeholder="아이디" />
              </div>
              <div>
                <input type="userpwd" placeholder="비밀번호" />
              </div>
              <button type="submit">로그인</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end login section -->

  <c:import url="/WEB-INF/views/common/footer.jsp" />

</body>
</html>