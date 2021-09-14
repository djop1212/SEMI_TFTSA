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
								<c:param name="student_no" value="1"/>
								<c:param name="tutor_no" value="2"/>
							</c:url>
	    					<button class="btn btn-default" type="button" data-target="#demo-chat-body" onclick="location.href='${ insertLikes }'"><i class="fa">찜하기</i></button>
	    					<c:url var="deleteChatting" value="deleteChatting.do">
								<c:param name="chat_room_no" value="1"/>
							</c:url>
	    					<button type="button" class="btn btn-default" onclick="nextDelete()"><i class="fa">대화삭제</i></button>
	    				</div>
	    			</div>
	    			<div>
	    				<h3 class="panel-title speech-left"><img src="${ pageContext.servletContext.contextPath }/resources/images/${ requestScope.usertutor.pic }" class="img-circle img-sm">${ requestScope.usertutor.user_name }</h3>
	    			</div>	
	    		</div>
	    		<div class="row panel-heading">
	    			<div class="col-6">
	    				<input class="btn btn-primary btn-block btn-example" type="button" value="신고하기" href="#layer2">
	    			</div>
	    			<div class="col-6">
	    				<c:url var="payment" value="payment.do">
							<c:param name="user_no" value="2"/>
						</c:url>
	    				<input class="btn btn-primary btn-block" type="button" value="과외성사" onclick="nextPayment()">
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
								<c:param name="student_name" value="임길동"/>
								<c:param name="tutor_name" value="홍길동"/>
								<c:param name="user_no" value="2"/>
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
	
</body>
</html>