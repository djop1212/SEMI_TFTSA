<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


  
  <!-- Basic -->

  <title>Joson</title>
   
</head>

<body class="sub_page">
  
    <!-- header section strats -->
      <div class="hero_area">
  <c:import url="/WEB-INF/views/common/menubar.jsp" ></c:import>
  </div>
   
    <!-- end header section -->
  

  <!-- login section -->

  <section class="login_section layout_padding">
    <div class="container">
      <div class="row">
   
        <div class="col-md-8">
          <div class="login_form" style="width:800px;margin-left:110px;">
            <h5>
              질문 작성하기 
            </h5>
            <form action="qnaupdate.do" method="post">
             <input type="hidden" name="tutor_no" value="${ loginMember.user_no }">
             
           
            <br>
	<h5>Q. 서비스가 시작되기 전 어떤 절차로 진행하나요?</h5>

 <br>
              
              작성하기
              <div>
              
                <input type="text" style="
    width: 80%;
    height: 150px;
    padding-left: 15px;
    border: none;
    outline: none;
    border-radius: 5px;
    margin: 10px 0;
   
		" class="answer" name="answer1" value="${ tutorqna.answer1}">
              </div>
                      <br>
	<h5>Q. 어떤 서비스를 전문적으로 제공하나요?</h5>

 <br>
              
              작성하기
              <div>
              
                <input type="text"  style="height: 40px;
    width: 80%;
    height: 150px;
    padding-left: 15px;
    border: none;
    outline: none;
    border-radius: 5px;
    margin: 10px 0;
   
		" class="answer" name="answer2" value="${ tutorqna.answer2}">
              </div>
                      <br>
	<h5>Q. 서비스의 견적은 어떤 방식으로 산정 되나요?</h5>

 <br>
              
              작성하기
              <div>
              
                <input type="text"  style="height: 40px;
    width: 80%;
    height: 150px;
    padding-left: 15px;
    border: none;
    outline: none;
    border-radius: 5px;
    margin: 10px 0;
		" class="answer" name="answer3"value="${ tutorqna.answer3}">
              </div>
                      <br>
	<h5>Q. A/S 또는 환불 규정은 어떻게 되나요?</h5>

 <br>
              
              작성하기
              <div>
              
                <input type="text"  style="height: 40px;
    width: 80%;
    height: 150px;
    padding-left: 15px;
    border: none;
    outline: none;
    border-radius: 5px;
    margin: 10px 0;
 
		" class="answer" name="answer4"value="${ tutorqna.answer4}">
              </div>
              
              <button type="submit">등록하기</button>
              <button onclick="javascript:location.href='${ pageContext.servletContext.contextPath }/detail.do">취소하기</button>
            </form>
      
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end login section -->

  <!-- info section -->
  <c:import url="/WEB-INF/views/common/footer.jsp" />


</body>

</html>