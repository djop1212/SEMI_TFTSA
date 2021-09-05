<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

  <title>회원가입</title>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script>
function validate(){
	//유효성 검사 코드 작성함
	//서버 컨트롤러로 전송할 값들이 요구한 조건을 모두 만족하였는지 검사함

	//암호와 암호 확인이 일치하지 않는지 확인함
	var pwdValue = document.getElementById("userpwd").value;
	var pwdValue2 = document.getElementById("userpwd2").value;

	if(pwdValue !== pwdValue2){
		alert("암호와 암호 확인의 값이 일치하지 않습니다.");
		document.getElementById("userpwd").select();
		return false;  //전송 취소함
	}

	return true;  //전송함
}
</script>
</head>


<body class="sub_page">
  <div class="hero_area">
    
    <c:import url="/WEB-INF/views/common/menubar.jsp" />
    
  </div>

  <!-- login section -->

  <section class="login_section layout_padding">
    <div class="container">
      <!-- <div class="row"> -->
        <center>
        <div class="col-md-6">
          <div class="login_form">
            <h5>
              회원가입
            </h5>
            <form action="enroll.do" method="post" onsubmit="return validate();">
            	<div>
            		* 이름 <input type="text" placeholder="이름 "/>
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
        </center>
      
    </div>
  </section>

  <!-- end login section -->

  <c:import url="/WEB-INF/views/common/footer.jsp" />

</body>

</html>