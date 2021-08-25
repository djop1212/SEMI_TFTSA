<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

  <title>회원가입</title>

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
          <div class="login_form">
            <h5>
              회원가입
            </h5>
            <form action="">
            	<div>
            		<input type="text" placeholder="이름 "/>
            	</div>
              <div>
                <input type="text" placeholder="아이디" />&nbsp;
                <input type="button" value="중복체크" onclick="return dupIdCheck();">
              </div>
              <div>
                <input type="text" placeholder="닉네임" />&nbsp;
                <input type="button" value="중복체크" onclick="return dupNickCheck();">
              </div>
              <div>
                <input type="password" placeholder="비밀번호" />
              </div>
              <div>
                <input type="password" placeholder="비밀번호 확인" />
              </div>
              <div>
                <input size="50px" type="radio" name="gender" value="M" checked> 남자 &nbsp; 
	    		<input size="50px" type="radio" name="gender" value="F"> 여자
              </div>
              <div>
              	<input type="tel" name="phone" required>
              </div>
              <button type="submit">회원가입하기</button>
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