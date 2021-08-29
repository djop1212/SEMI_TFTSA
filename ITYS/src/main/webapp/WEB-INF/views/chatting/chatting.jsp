<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</style>

<body class="sub_page">
  <div class="hero_area">
  
    <c:import url="/WEB-INF/views/common/menubar.jsp" />
    
  </div>
	
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
	    					<button class="btn btn-default" type="button" data-target="#demo-chat-body"><i class="fa">찜하기</i></button>
	    					<button type="button" class="btn btn-default"><i class="fa">대화삭제</i></button>
	    				</div>
	    			</div>
	    			<div>
	    				<h3 class="panel-title speech-left"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="img-circle img-sm" alt="Profile Picture">빽이</h3>
	    			</div>	
	    		</div>
	    		<div class="row panel-heading">
	    			<div class="col-6">
	    				<input class="btn btn-primary btn-block" type="button" value="신고하기">
	    			</div>
	    			<div class="col-6">
	    				<input class="btn btn-primary btn-block" type="button" value="과외성사">
	    			</div>
	    		</div>
	    
	    		<!--Widget body-->
	    		<div id="demo-chat-body">
	    			<div class="nano has-scrollbar" style="height:380px">
	    				<div class="nano-content pad-all" tabindex="0" style="right: -17px;">
	    					<ul class="list-unstyled media-block">
	    						<li class="mar-btm">
	    							<div class="media-body pad-hor speech-right">
	    								<div class="speech">
	    									<p>안녕하세요~<br>선생님과 상담하고 싶어서 연락드렸어요:)</p>
	    									<p class="speech-time">
	    										<i class="fa fa-clock-o fa-fw"></i>14시간전
	    									</p>
	    									<p class="speech-time">읽음</p>
	    								</div>
	    							</div>
	    						</li>
	    						<li class="mar-btm">
	    							<div class="media-body pad-hor speech-left">
	    								<div class="speech">
	    									<p>안녕하세요!<br>어떤 수업 필요하신가요?</p>
	    									<p class="speech-time">
	    									<i class="fa fa-clock-o fa-fw"></i>9시간전
	    									</p>
	    									<p class="speech-time">읽음</p>
	    								</div>
	    							</div>
	    						</li>
	    						<li class="mar-btm">
	    							<div class="media-body pad-hor speech-right">
	    								<div class="speech">
	    									<p>안녕하세요~<br>선생님과 상담하고 싶어서 연락드렸어요:)</p>
	    									<p class="speech-time">
	    										<i class="fa fa-clock-o fa-fw"></i>14시간전
	    									</p>
	    									<p class="speech-time">읽음</p>
	    								</div>
	    							</div>
	    						</li>
	    						<li class="mar-btm">
	    							<div class="media-body pad-hor speech-left">
	    								<div class="speech">
	    									<p>안녕하세요!<br>어떤 수업 필요하신가요?</p>
	    									<p class="speech-time">
	    									<i class="fa fa-clock-o fa-fw"></i>9시간전
	    									</p>
	    									<p class="speech-time">읽음</p>
	    								</div>
	    							</div>
	    						</li>
	    					</ul>
	    				</div>
	    			<div class="nano-pane"><div class="nano-slider" style="height: 141px; transform: translate(0px, 0px);"></div></div></div>
	    
	    			<!--Widget footer-->
	    			<div class="panel-footer">
	    				<div class="row">
	    					<div class="col-9">
	    						<input type="text" placeholder="대화내용 입력" class="form-control chat-input">
	    					</div>
	    					<div class="col-3">
	    						<button class="btn btn-primary btn-block" type="submit">보내기</button>
	    					</div>
	    				</div>
	    			</div>
	    		</div>
	    	</div>
	    </div>
	</div>
	<div class="panel-heading">
	</div>
	</center>
	<p class="header-payment header-hidden">결제 하기</p>

	<c:import url="/WEB-INF/views/common/footer.jsp" />

</body>
</html>