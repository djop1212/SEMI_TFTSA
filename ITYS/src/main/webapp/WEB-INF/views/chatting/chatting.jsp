<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>

    <title>Joson</title>

	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	
</head>

<style type="text/css">
.panel-heading {
    position: relative;
    height: 50px;
    padding: 0;
    border-bottom:1px solid #eee;
}

.panel-control {
    height: 100%;
    position: relative;
    float: right;
    padding: 0 15px;
}

.panel-title {
    font-weight: normal;
    padding: 0 20px 0 20px;
    font-size: 1.416em;
    line-height: 50px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.panel-control .btn, .panel-control .dropdown-toggle.btn {
    border: 0;
}

.nano {
    position: relative;
    width: 100%;
    height: 100%;
    overflow: hidden;
}

.nano>.nano-content {
    position: absolute;
    overflow: scroll;
    overflow-x: hidden;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    display:flex;
    flex-direction: column-reverse;
    overflow-y:auto;
}

.pad-all {
    padding: 15px;
}

.mar-btm {
    margin-bottom: 15px;
}

.img-sm {
    width: 46px;
    height: 46px;
}

.pad-hor {
    padding-left: 15px;
    padding-right: 15px;
}

.speech {
    position: relative;
    background: #b7dcfe;
    color: #317787;
    display: inline-block;
    border-radius: 0;
    padding: 12px 20px;
}

.speech:before {
    content: "";
    display: block;
    position: absolute;
    width: 0;
    height: 0;
    left: 0;
    top: 0;
    border-top: 7px solid transparent;
    border-bottom: 7px solid transparent;
    border-right: 7px solid #b7dcfe;
    margin: 15px 0 0 -6px;
}

.speech-right>.speech:before {
    left: auto;
    right: 0;
    border-top: 7px solid transparent;
    border-bottom: 7px solid transparent;
    border-left: 7px solid #ffdc91;
    border-right: 0;
    margin: 15px -6px 0 0;
}

.speech-time {
    margin-top: 20px;
    margin-bottom: 0;
    font-size: .8em;
    font-weight: 300;
}

.speech-right {
    text-align: right;
}

.speech-left {
    text-align: left;
}

.speech-right>.speech {
    background: #ffda87;
    color: #a07617;
    text-align: right;
}

.speech-right>.speech .media-heading {
    color: #a07617;
}

.header-hidden {
	visibility: hidden;
}

.pop-layer .pop-container {
  padding: 20px 25px;
}

.pop-layer p.ctxt {
  color: #666;
  line-height: 25px;
}

.pop-layer .btn-r {
  width: 100%;
  margin: 10px 0 20px;
  padding-top: 10px;
  border-top: 1px solid #DDD;
  text-align: right;
}

.pop-layer {
  display: none;
  position: absolute;
  top: 50%;
  left: 50%;
  width: 410px;
  height: auto;
  background-color: #fff;
  border: 5px solid #3571B5;
  z-index: 10;
}

.dim-layer {
  display: none;
  position: fixed;
  _position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 100;
}

.dim-layer .dimBg {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: #000;
  opacity: .5;
  filter: alpha(opacity=50);
}

.dim-layer .pop-layer {
  display: block;
}

a.btn-layerClose {
  display: inline-block;
  height: 25px;
  padding: 0 14px 0;
  border: 1px solid #304a8a;
  background-color: #3f5a9d;
  font-size: 13px;
  color: #fff;
  line-height: 25px;
}

a.btn-layerClose:hover {
  border: 1px solid #091940;
  background-color: #1f326a;
  color: #fff;
}
</style>

<body class="sub_page">
  <div class="hero_area">
  
    <c:import url="/WEB-INF/views/common/menubar.jsp" />
    
  </div>
	<c:if test="${ sessionScope.loginMember.user_position eq 'S' }">
		<input type="hidden" id="sender" value="${ requestScope.userchattingstudent.user_no }">
		<input type="hidden" id="receiver" value="${ requestScope.userchattingtutor.user_no }">
	</c:if>
	<c:if test="${ sessionScope.loginMember.user_position eq 'T' }">
		<input type="hidden" id="sender" value="${ requestScope.userchattingtutor.user_no }">
		<input type="hidden" id="receiver" value="${ requestScope.userchattingstudent.user_no }">
	</c:if>
	<p class="header-payment header-hidden">결제 하기</p>
	<center>
	<div class="panel-heading">
	</div>
	<div class="container">
	    <div class="col-md-12 col-lg-6">
	        <div>
	        	<!--Heading-->
	    		<div>
	    			<div class="panel-control">
	    				<div class="btn-group">
	    					<c:url var="insertLikes" value="insertLikes.do">
	    						<c:if test="${ requestScope.userchattingstudent != null and requestScope.userchattingtutor != null }">
								<c:param name="student_no" value="${ requestScope.userchattingstudent.user_no }"/>
								<c:param name="tutor_no" value="${ requestScope.userchattingtutor.user_no }"/>
								<c:param name="chat_room_no" value="${ requestScope.userchattingstudent.chat_room_no }"/>
								</c:if>
								<c:if test="${ requestScope.userchattingstudent == null or requestScope.userchattingtutor == null }">
								<c:param name="student_no" value="${ requestScope.studentchattingroom.user_no }"/>
								<c:param name="tutor_no" value="${ requestScope.tutorchattingroom.user_no }"/>
								<c:param name="chat_room_no" value="${ requestScope.studentchattingroom.chat_room_no }"/>
								</c:if>
							</c:url>
							<c:url var="deleteLikes" value="deleteLikes.do">
								<c:if test="${ requestScope.userchattingstudent != null and requestScope.userchattingtutor != null }">
								<c:param name="student_no" value="${ requestScope.userchattingstudent.user_no }"/>
								<c:param name="tutor_no" value="${ requestScope.userchattingtutor.user_no }"/>
								<c:param name="chat_room_no" value="${ requestScope.userchattingstudent.chat_room_no }"/>
								</c:if>
								<c:if test="${ requestScope.userchattingstudent == null or requestScope.userchattingtutor == null }">
								<c:param name="student_no" value="${ requestScope.studentchattingroom.user_no }"/>
								<c:param name="tutor_no" value="${ requestScope.tutorchattingroom.user_no }"/>
								<c:param name="chat_room_no" value="${ requestScope.studentchattingroom.chat_room_no }"/>
								</c:if>
							</c:url>
							<c:if test="${ sessionScope.loginMember.user_position eq 'S' }">
							<c:if test="${ requestScope.likes == null }">
	    					<button class="btn btn-default" type="button" data-target="#demo-chat-body" onclick="nextInsertLikes()"><i class="fa">찜하기</i></button>
	    					</c:if>
	    					<c:if test="${ requestScope.likes != null }">
	    					<button class="btn btn-default" type="button" data-target="#demo-chat-body" onclick="nextDeleteLikes()"><i class="fa">찜하기</i></button>
	    					</c:if>
	    					</c:if>
	    					<c:url var="deleteChatting" value="deleteChatting.do">
	    						<c:if test="${ requestScope.userchattingstudent != null }">
								<c:param name="chat_room_no" value="${ requestScope.userchattingstudent.chat_room_no }"/>
								</c:if>
								<c:if test="${ requestScope.userchattingstudent == null }">
								<c:param name="chat_room_no" value="${ requestScope.studentchattingroom.chat_room_no }"/>
								</c:if>
							</c:url>
	    					<button type="button" class="btn btn-default" onclick="nextDelete()"><i class="fa">대화삭제</i></button>
	    				</div>
	    			</div>
	    			<div>
	    				<c:if test="${ requestScope.userchattingstudent != null and requestScope.userchattingtutor != null }">
	    				<c:if test="${ sessionScope.loginMember.user_position eq 'S' }">
	    				<h3 class="panel-title speech-left"><img src="${ pageContext.servletContext.contextPath }/resources/images/mypage/tutorImg/${ requestScope.userchattingtutor.pic }" class="img-circle img-sm">${ requestScope.userchattingtutor.user_name } 선생님</h3>
	    				</c:if>
	    				<c:if test="${ sessionScope.loginMember.user_position eq 'T' }">
	    				<h3 class="panel-title speech-left"><img src="${ pageContext.servletContext.contextPath }/resources/images/mypage/studentImg/${ requestScope.userchattingstudent.pic }" class="img-circle img-sm">${ requestScope.userchattingstudent.user_name } 학생</h3>
	    				</c:if>
	    				</c:if>
	    				
	    				<c:if test="${ requestScope.userchattingstudent == null or requestScope.userchattingtutor == null }">
	    				<c:if test="${ sessionScope.loginMember.user_position eq 'S' }">
	    				<h3 class="panel-title speech-left"><img src="${ pageContext.servletContext.contextPath }/resources/images/mypage/tutorImg/${ requestScope.tutorchattingroom.pic }" class="img-circle img-sm">${ requestScope.tutorchattingroom.tutor_name } 선생님</h3>
	    				</c:if>
	    				<c:if test="${ sessionScope.loginMember.user_position eq 'T' }">
	    				<h3 class="panel-title speech-left"><img src="${ pageContext.servletContext.contextPath }/resources/images/mypage/studentImg/${ requestScope.studentchattingroom.pic }" class="img-circle img-sm">${ requestScope.studentchattingroom.student_name } 학생</h3>
	    				</c:if>
	    				</c:if>
	    			</div>	
	    		</div>
	    		<div class="row panel-heading">
	    			<c:if test="${ sessionScope.loginMember.user_position eq 'S' }">
	    			<div class="col-6">
	    				<input class="btn btn-primary btn-block btn-example" type="button" value="신고하기" href="#layer2">
	    			</div>
	    			<div class="col-6">
	    				<c:url var="payment" value="payment.do">
	    					<c:if test="${ requestScope.userchattingstudent != null and requestScope.userchattingtutor != null }">
							<c:param name="tutor_no" value="${ requestScope.userchattingtutor.user_no }"/>
							<c:param name="student_no" value="${ requestScope.userchattingstudent.user_no }"/>
							<c:param name="tutor_name" value="${ requestScope.userchattingtutor.user_name }"/>
							<c:param name="student_name" value="${ requestScope.userchattingstudent.user_name }"/>
							<c:param name="pay_amount" value="${ requestScope.userchattingtutor.min_pay }"/>
							</c:if>
							
							<c:if test="${ requestScope.userchattingstudent == null or requestScope.userchattingtutor == null }">
							<c:param name="tutor_no" value="${ requestScope.tutorchattingroom.user_no }"/>
							<c:param name="student_no" value="${ requestScope.studentchattingroom.user_no }"/>
							<c:param name="tutor_name" value="${ requestScope.tutorchattingroom.tutor_name }"/>
							<c:param name="student_name" value="${ requestScope.studentchattingroom.student_name }"/>
							<c:param name="pay_amount" value="${ requestScope.tutorchattingroom.min_pay }"/>
							</c:if>
						</c:url>
	    				<input class="btn btn-primary btn-block" type="button" value="과외성사" onclick="nextPayment()">
	    			</div>
	    			</c:if>
	    		</div>
	    
	    		<!--Widget body-->
	    		<div id="demo-chat-body">
	    			<c:if test="${ sessionScope.loginMember.user_position eq 'S' }">
	    			<div class="nano has-scrollbar" style="height:380px;">
	    				<div class="nano-content pad-all" tabindex="0" style="right: -17px;">
	    					<ul class="list-unstyled media-block" id="messageWindow">
	    						<c:forEach items="${ requestScope.chat }" var="ch">
	    						<c:if test="${ requestScope.userchattingstudent != null and requestScope.userchattingtutor != null }">
	    						<c:if test="${ ch.user_no eq requestScope.userchattingstudent.user_no }">
	    						<li class="mar-btm">
	    							<div class="media-body pad-hor speech-right">
	    								<div class="speech">
	    									<p>${ ch.chat_content }<br></p>
	    									<p class="speech-time">
	    										<i class="fa fa-clock-o fa-fw"></i><fmt:formatDate value="${ ch.wrtn_datetm }" type="both" pattern="hh:mm"/>	    										
	    									</p>
	    									<!-- <p class="speech-time">읽음</p> -->
	    								</div>
	    							</div>
	    						</li>
	    						</c:if>
	    						<c:if test="${ ch.user_no eq requestScope.userchattingtutor.user_no }">
	    						<li class="mar-btm">
	    							<div class="media-body pad-hor speech-left">
	    								<div class="speech">
	    									<p>${ ch.chat_content }<br></p>
	    									<p class="speech-time">
	    									<i class="fa fa-clock-o fa-fw"></i><fmt:formatDate value="${ ch.wrtn_datetm }" type="both" pattern="hh:mm"/>
	    									</p>
	    									<!-- <p class="speech-time">읽음</p> -->
	    								</div>
	    							</div>
	    						</li>
	    						</c:if>
	    						</c:if>
	    						<c:if test="${ requestScope.userchattingstudent == null or requestScope.userchattingtutor == null }">
	    						<c:if test="${ ch.user_no eq requestScope.studentchattingroom.user_no }">
	    						<li class="mar-btm">
	    							<div class="media-body pad-hor speech-right">
	    								<div class="speech">
	    									<p>${ ch.chat_content }<br></p>
	    									<p class="speech-time">
	    										<i class="fa fa-clock-o fa-fw"></i><fmt:formatDate value="${ ch.wrtn_datetm }" type="both" pattern="hh:mm"/>	    										
	    									</p>
	    									<!-- <p class="speech-time">읽음</p> -->
	    								</div>
	    							</div>
	    						</li>
	    						</c:if>
	    						<c:if test="${ ch.user_no eq requestScope.tutorchattingroom.user_no }">
	    						<li class="mar-btm">
	    							<div class="media-body pad-hor speech-left">
	    								<div class="speech">
	    									<p>${ ch.chat_content }<br></p>
	    									<p class="speech-time">
	    									<i class="fa fa-clock-o fa-fw"></i><fmt:formatDate value="${ ch.wrtn_datetm }" type="both" pattern="hh:mm"/>
	    									</p>
	    									<!-- <p class="speech-time">읽음</p> -->
	    								</div>
	    							</div>
	    						</li>
	    						</c:if>
	    						</c:if>
	    						</c:forEach>
	    					</ul>
	    				</div>
	    			<div class="nano-pane"><div class="nano-slider" style="height: 141px; transform: translate(0px, 0px);"></div></div></div>
	    			</c:if>
	    			
	    			<c:if test="${ sessionScope.loginMember.user_position eq 'T' }">
	    			<div class="nano has-scrollbar" style="height:380px">
	    				<div class="nano-content pad-all" tabindex="0" style="right: -17px;">
	    					<ul class="list-unstyled media-block" id="messageWindow">
	    						<c:forEach items="${ requestScope.chat }" var="ch">
	    						<c:if test="${ requestScope.userchattingstudent != null and requestScope.userchattingtutor != null }">
	    						<c:if test="${ ch.user_no eq requestScope.userchattingtutor.user_no }">
	    						<li class="mar-btm">
	    							<div class="media-body pad-hor speech-right">
	    								<div class="speech">
	    									<p>${ ch.chat_content }<br></p>
	    									<p class="speech-time">
	    										<i class="fa fa-clock-o fa-fw"></i><fmt:formatDate value="${ ch.wrtn_datetm }" type="both" pattern="hh:mm"/>	    										
	    									</p>
	    									<!-- <p class="speech-time">읽음</p> -->
	    								</div>
	    							</div>
	    						</li>
	    						</c:if>
	    						<c:if test="${ ch.user_no eq requestScope.userchattingstudent.user_no }">
	    						<li class="mar-btm">
	    							<div class="media-body pad-hor speech-left">
	    								<div class="speech">
	    									<p>${ ch.chat_content }<br></p>
	    									<p class="speech-time">
	    									<i class="fa fa-clock-o fa-fw"></i><fmt:formatDate value="${ ch.wrtn_datetm }" type="both" pattern="hh:mm"/>
	    									</p>
	    									<!-- <p class="speech-time">읽음</p> -->
	    								</div>
	    							</div>
	    						</li>
	    						</c:if>
	    						</c:if>
	    						<c:if test="${ requestScope.userchattingstudent == null or requestScope.userchattingtutor == null }">
	    						<c:if test="${ ch.user_no eq requestScope.tutorchattingroom.user_no }">
	    						<li class="mar-btm">
	    							<div class="media-body pad-hor speech-right">
	    								<div class="speech">
	    									<p>${ ch.chat_content }<br></p>
	    									<p class="speech-time">
	    										<i class="fa fa-clock-o fa-fw"></i><fmt:formatDate value="${ ch.wrtn_datetm }" type="both" pattern="hh:mm"/>	    										
	    									</p>
	    									<!-- <p class="speech-time">읽음</p> -->
	    								</div>
	    							</div>
	    						</li>
	    						</c:if>
	    						<c:if test="${ ch.user_no eq requestScope.studentchattingroom.user_no }">
	    						<li class="mar-btm">
	    							<div class="media-body pad-hor speech-left">
	    								<div class="speech">
	    									<p>${ ch.chat_content }<br></p>
	    									<p class="speech-time">
	    									<i class="fa fa-clock-o fa-fw"></i><fmt:formatDate value="${ ch.wrtn_datetm }" type="both" pattern="hh:mm"/>
	    									</p>
	    									<!-- <p class="speech-time">읽음</p> -->
	    								</div>
	    							</div>
	    						</li>
	    						</c:if>
	    						</c:if>
	    						</c:forEach>
	    					</ul>
	    				</div>
	    			<div class="nano-pane"><div class="nano-slider" style="height: 141px; transform: translate(0px, 0px);"></div></div></div>
	    			</c:if>
	    			
	    			<!--Widget footer-->
	    			<div class="panel-footer">
	    				<div class="row">
	    					<div class="col-9">
	    						<input type="text" placeholder="대화내용 입력" class="form-control chat-input" id="inputMessage" onkeydown="enterKey();">
	    					</div>
	    					<div class="col-3">
		    					<c:url var="insertChatting" value="insertChatting.do">
		    						<c:if test="${ requestScope.userchattingstudent != null and requestScope.userchattingtutor != null }">
									<c:param name="student_name" value="${ requestScope.userchattingstudent.user_name }"/>
									<c:param name="tutor_name" value="${ requestScope.userchattingtutor.user_name }"/>
									<c:param name="student_no" value="${ requestScope.userchattingstudent.user_no }"/>
									<c:param name="tutor_no" value="${ requestScope.userchattingtutor.user_no }"/>
									<c:param name="chat_room_no" value="${ requestScope.userchattingstudent.chat_room_no }"/>
									<c:if test="${ sessionScope.loginMember.user_position eq 'S' }">
										<c:param name="user_no" value="${ requestScope.userchattingstudent.user_no }"/>
									</c:if>
									<c:if test="${ sessionScope.loginMember.user_position eq 'T' }">
										<c:param name="user_no" value="${ requestScope.userchattingtutor.user_no }"/>
									</c:if>
									</c:if>
									
									<c:if test="${ requestScope.userchattingstudent == null or requestScope.userchattingtutor == null }">
									<c:param name="student_name" value="${ requestScope.studentchattingroom.student_name }"/>
									<c:param name="tutor_name" value="${ requestScope.tutorchattingroom.tutor_name }"/>
									<c:param name="student_no" value="${ requestScope.studentchattingroom.user_no }"/>
									<c:param name="tutor_no" value="${ requestScope.tutorchattingroom.user_no }"/>
									<c:param name="chat_room_no" value="${ requestScope.studentchattingroom.chat_room_no }"/>
									<c:if test="${ sessionScope.loginMember.user_position eq 'S' }">
										<c:param name="user_no" value="${ requestScope.studentchattingroom.user_no }"/>
									</c:if>
									<c:if test="${ sessionScope.loginMember.user_position eq 'T' }">
										<c:param name="user_no" value="${ requestScope.tutorchattingroom.user_no }"/>
									</c:if>
									</c:if>
								</c:url>
	    						<button class="btn btn-primary btn-block" type="button" onclick="send();">보내기</button>
	    					</div>
	    				</div>
	    			</div>
	    		</div>
	    	</div>
	    </div>
	</div>
	<div class="panel-heading">
	</div>
	<div class="dim-layer">
	    <div class="dimBg"></div>
	    <div id="layer2" class="pop-layer">
	        <div class="pop-container">
	            <div class="pop-conts">
	                <!--content //-->
	                <p>신고내용을 입력하세요.</p>
	                <input type="text" class="ctxt mb20" id="contents"><br>
	                <div class="btn-r">
	                		<c:url var="insertBlock" value="insertBlock.do">
	                			<c:if test="${ requestScope.userchattingstudent != null and requestScope.userchattingtutor != null }">
								<c:param name="student_name" value="${ requestScope.userchattingstudent.user_name }"/>
								<c:param name="tutor_name" value="${ requestScope.userchattingtutor.user_name }"/>
								<c:param name="user_no" value="${ requestScope.userchattingstudent.user_no }"/>
								<c:param name="chat_room_no" value="${ requestScope.userchattingstudent.chat_room_no }"/>
								<c:param name="student_no" value="${ requestScope.userchattingstudent.user_no }"/>
								<c:param name="tutor_no" value="${ requestScope.userchattingtutor.user_no }"/>
								</c:if>
								
								<c:if test="${ requestScope.userchattingstudent == null or requestScope.userchattingtutor == null }">
								<c:param name="student_name" value="${ requestScope.studentchattingroom.student_name }"/>
								<c:param name="tutor_name" value="${ requestScope.tutorchattingroom.tutor_name }"/>
								<c:param name="user_no" value="${ requestScope.studentchattingroom.user_no }"/>
								<c:param name="chat_room_no" value="${ requestScope.studentchattingroom.chat_room_no }"/>
								<c:param name="student_no" value="${ requestScope.studentchattingroom.user_no }"/>
								<c:param name="tutor_no" value="${ requestScope.tutorchattingroom.user_no }"/>
								</c:if>
							</c:url>
	                	<a href="#" class="btn-layerClose" onclick="nextBlock()">확인</a>
	                    <a href="#" class="btn-layerClose">취소</a>
	                </div>
	                <!--// content-->
	            </div>
	        </div>
	    </div>
	</div>
	</center>
	<p class="header-payment header-hidden">결제 하기</p>

	<c:import url="/WEB-INF/views/common/footer.jsp" />

	<script>
		function nextPayment() {
			if(confirm("과외를 성사시키시겠습니까?"))
		 	{
		  		location.href="${ payment }";
		 	}
		 	else
		 	{
		 		alert('취소하셨습니다.');
		 	}
		}
		
		function nextDelete() {
			if(confirm("대화를 삭제하시겠습니까?"))
		 	{
		  		location.href="${ deleteChatting }";
		 	}
		 	else
		 	{
		 		alert('취소하셨습니다.');
		 	}
		}
		
		function nextBlock() {
			if(confirm("다음 내용으로 신고하시겠습니까?"))
		 	{
				var contents = document.getElementById("contents").value;
		  		location.href="${ insertBlock }&contents=" + contents;
		 	}
		 	else
		 	{
		 		alert('취소하셨습니다.');
		 	}
		}
		
		function nextInsertLikes() {
			if(confirm("선생님을 찜목록에 추가하시겠습니까?"))
		 	{
		  		location.href="${ insertLikes }";
		 	}
		 	else
		 	{
		 		alert('취소하셨습니다.');
		 	}
		}
		
		function nextDeleteLikes() {
			if(confirm("선생님을 찜목록에서 제거하시겠습니까?"))
		 	{
		  		location.href="${ deleteLikes }";
		 	}
		 	else
		 	{
		 		alert('취소하셨습니다.');
		 	}
		}
	</script>
	
	<script type="text/javascript">
		$('.btn-example').click(function(){
	        var $href = $(this).attr('href');
	        layer_popup($href);
	    });
	    function layer_popup(el){
	
	        var $el = $(el);    //레이어의 id를 $el 변수에 저장
	        var isDim = $el.prev().hasClass('dimBg'); //dimmed 레이어를 감지하기 위한 boolean 변수
	
	        isDim ? $('.dim-layer').fadeIn() : $el.fadeIn();
	
	        var $elWidth = ~~($el.outerWidth()),
	            $elHeight = ~~($el.outerHeight()),
	            docWidth = $(document).width(),
	            docHeight = $(document).height();
	
	        // 화면의 중앙에 레이어를 띄운다.
	        if ($elHeight < docHeight || $elWidth < docWidth) {
	            $el.css({
	                marginTop: -$elHeight /2,
	                marginLeft: -$elWidth/2
	            })
	        } else {
	            $el.css({top: 0, left: 0});
	        }
	
	        $el.find('a.btn-layerClose').click(function(){
	            isDim ? $('.dim-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
	            return false;
	        });
	
	        $('.layer .dimBg').click(function(){
	            $('.dim-layer').fadeOut();
	            return false;
	        });
	    }
	</script>
	
	<script type="text/javascript">
		//상대방과 연결할 웹소켓 객체 준비
		var webSocket = null;
		//채팅창 앨리먼트 변수
		var $textarea = $('#messageWindow');
		//상대방에게 전송할 메세지 입력 앨리먼트 변수
		var $inputMessage = $('#inputMessage');
		
		function connection(){
			/*
			웹소켓 객체는 생성자를 통해 생성됨
			객체 생성시에 서버와 자동 연결됨.
			사용되는 프로토콜은 ws:// 임.
			*/	
			webSocket = new WebSocket(
					"ws://localhost:8087/" +
					"${ pageContext.servletContext.contextPath }/unicast");
		
			//웹소켓을 통해서 연결이 될 때 동작할 이벤트핸들러 작성
			/* webSocket.onopen = function(event){
				$textarea.html("<p class='chat_content'>"
						+ $('#sender').val() + 
						"님이 입장하셨습니다.</p><br>");
				//웹소켓을 통해 채팅서버에 메세지 전송함
				webSocket.send($('#sender').val() + 
						"|님이 입장함.");
			}; */
			
			//서버로 부터 메세지를 받을 때 동작할 이벤트핸들러 작성
			webSocket.onmessage = function(event){
				onMessage(event);
			};
			
			//서버로 메세지 보낼 때 에러 발생 처리용 이벤트핸들러 작성
			webSocket.onerror = function(event){
				onError(event)
			};
			
			//서버와 연결을 닫을 때의 이벤트핸들러 작성
			webSocket.onclose = function(event){
				onClose(event);
			};
		}
	
		//보내기 버튼 클릭시 실행되는 send() 함수 작성
		function send(){
			var today = new Date();
			var hours = today.getHours();
			var minutes = today.getMinutes();
			
			if (hours == 0){
				hours = 12;
			}
			
			if (hours > 12){
				hours = hours % 12;
			}
			
			if (hours < 10){
				hours = '0' + hours;
			}
			
			if (minutes < 10){
				minutes = '0' + minutes;
			}
			
			var timeString = hours + ':' + minutes;
			var message;
			
			//메세지가 입력된 경우
			if($inputMessage.val() != "") {
				$textarea.html($textarea.html() + 
					"<li class='mar-btm'>"
						+ "<div class='media-body pad-hor speech-right'>"
							+ "<div class='speech'>"
								+ "<p>" + $inputMessage.val() + "<br></p>"
								+ "<p class='speech-time'>"
									+ "<i class='fa fa-clock-o fa-fw'></i>" + timeString
								+ "</p>"
								/* + "<p class='speech-time'>읽음</p>" */
							+ "</div>"
						+ "</div>"
					+ "</li>");
				webSocket.send($('#sender').val() + "|"
					+ $inputMessage.val());
				message = $inputMessage.val();
				$inputMessage.val('');  //기록된 메세지 삭제함
			}
			
			//화면이 위로 스크롤되게 처리함
			$textarea.scrollTop($textarea.height());
			
			location.href="${ insertChatting }&chat_content=" + message;
		}  //send()
		
		//웹소켓 이벤트핸들러에 의해 실행되는 함수 작성
		function onMessage(event){
			//서버로 부터 데이터를 받았을 때 작동되는 함수임
			var message = event.data.split("|");
			//보낸사람 아이디
			var receiverID = message[0];
			//전송온 메세지
			var content = message[1];
			
			var today = new Date();
			var hours = today.getHours();
			var minutes = today.getMinutes();
			
			if (hours == 0){
				hours = 12;
			}
			
			if (hours > 12){
				hours = hours % 12;
			}
			
			if (hours < 10){
				hours = '0' + hours;
			}
			
			if (minutes < 10){
				minutes = '0' + minutes;
			}
			
			var timeString = hours + ':' + minutes;
			
			//전송온 메세지가 비었거나, 보낸사람이 내가 연결한
			//사람이 아닐 경우 아무 내용도 실행하지 않는다.
			if(content == "" || 
					!receiverID.match($('#receiver').val())){
				//비워 놓음
			}else{
				$textarea.html($textarea.html() +
						"<li class='mar-btm'>"
							+ "<div class='media-body pad-hor speech-left'>"
								+ "<div class='speech'>"
									+ "<p>" + content + "<br></p>"
									+ "<p class='speech-time'>"
									+ "<i class='fa fa-clock-o fa-fw'></i>" + timeString
									+ "</p>"
									/* + "<p class='speech-time'>읽음</p>" */
								+ "</div>"
							+ "</div>"
						+ "</li>");
				//화면이 위로 스크롤되게 처리함
				$textarea.scrollTop($textarea.height());
			}
			
		} //onMessage()
		
		function onError(event){
			alert(event.data);
		}
		
		function onClose(event){
			alert(event);
		}
		
		connection();
		
		//전송할 메세지 입력하면서, 키보드 키에서 손뗄때마다
		//실행되는 이벤트핸들러 함수
		function enterKey(){
			//누른 키가 엔터키(Enter) 이면 메세지 전송함
			if(window.event.keyCode == 13){
				send();
			}
		}
	</script>
</body>
</html>