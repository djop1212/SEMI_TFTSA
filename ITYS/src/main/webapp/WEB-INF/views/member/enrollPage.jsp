<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<style type="text/css">
.loginForm{
	padding : 30px 15px;
	background-color: rgba(255, 255, 255, 0.25);
	text-align: center;
	border-radius: 15px;
}
.loginForm form input {
    height: 40px;
    padding-left: 15px;
    border: none;
    outline: none;
    border-radius: 5px;
    margin: 10px 0;
}
.loginForm form button {
    display: inline-block;
    padding: 7px 45px;
    background-color: #252525;
    border: 1px solid #252525;
    color: #ffffff;
    margin-top: 25px;
    font-size: 15px;
    text-transform: uppercase;
    font-weight: bold;
}
.id_ok{color:#fff; display: none;}
.id_already{color:#6A82FB; display: none;}
.email_ok{color:#fff; display: none;}
.email_already{color:#6A82FB; display: none;}
</style>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script>
	function validate() {
		//유효성 검사 코드 작성함
		//서버 컨트롤러로 전송할 값들이 요구한 조건을 모두 만족하였는지 검사함

		//암호와 암호 확인이 일치하지 않는지 확인함
		var pwdValue = document.getElementById("userpwd").value;
		var pwdValue2 = document.getElementById("userpwd2").value;

		if (pwdValue !== pwdValue2) {
			alert("암호와 암호 확인의 값이 일치하지 않습니다.");
			document.getElementById("userpwd").select();
			return false; //전송 취소함
		}

		return true; //전송함
	}
	function checkId(){
        $.ajax({
            url:'idCheck.do', //Controller에서 인식할 주소
            type:'post', //POST 방식으로 전달
            data:{id:$("#id").val()},
            success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
            	console.log("id : "+id);
                if(cnt != 1){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                    $('.id_ok').css("display","inline-block"); 
                    $('.id_already').css("display", "none");
                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                    $('.id_already').css("display","inline-block");
                    $('.id_ok').css("display", "none");
                }
            },
            error: function(jqXHR, textstatus, errorthrown){
				console.log("error : " + jqXHR + ", " + textstatus
						+ ", " + errorthrown);
			}
        });
    };
    function checkEmail(){
        $.ajax({
            url:'emailCheck.do', //Controller에서 인식할 주소
            type:'post', //POST 방식으로 전달
            data:{email:$("#email").val()},
            success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
            	console.log("email : "+email);
                if(cnt != 1){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 이메일
                    $('.email_ok').css("display","inline-block"); 
                    $('.email_already').css("display", "none");
                } else { // cnt가 1일 경우 -> 이미 존재하는 이메일
                    $('.email_already').css("display","inline-block");
                    $('.email_ok').css("display", "none");
                }
            },
            error: function(jqXHR, textstatus, errorthrown){
				console.log("error : " + jqXHR + ", " + textstatus
						+ ", " + errorthrown);
			}
        });
    };
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
					<div class="loginForm">
						<h5>회원가입</h5>
						<form action="enroll.do" method="post" onsubmit="return validate();">
							
							<table align="center">
								<tr><th>* 이름</th>
									<td><input type="text" name="user_name" placeholder="이름 " required/></td>
								</tr>
								<tr><th>* 아이디</th>
									<td><input type="text" id="id" name="user_id" placeholder="아이디" required oninput="checkId()" /><br>
								<span class="id_ok">사용 가능한 아이디입니다.</span>
								<span class="id_already">이미 사용중인 아이디입니다.</span></td>
								</tr>
								<tr><th>* 비밀번호</th>
									<td><input type="password" name="user_pwd" id="userpwd" placeholder="비밀번호" required/></td>
								</tr>
								<tr><th>* 비밀번호 확인 </th>
									<td><input type="password" id="userpwd2" placeholder="비밀번호 확인" required onblur="validate();"/></td>
								</tr>
								<tr><th>* 주민번호</th>
									<td><input type="text" name="user_ssn" placeholder="예) 940725-1234567" pattern="\d{6}-\d{7}" required/></td>
								</tr>
								<tr><th>* 핸드폰</th>
									<td><input type="tel" name="user_phone" placeholder="예) 010-1234-5678" pattern="\d{3}-\d{4}-\d{4}" required></td>
								</tr>
								<tr><th>* 이메일</th>
									<td><input type="email" id="email" name="user_email" placeholder="예) itys@study.co.kr" required oninput="checkEmail()"/><br>
								<span class="email_ok">사용 가능한 이메일입니다.</span>
								<span class="email_already">이미 사용중인 이메일입니다.</span></td>
								</tr>
							</table>
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