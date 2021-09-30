<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

  <title>info</title>

<style type="text/css">
 dl.faq button {
  margin: 0;
  padding: 0;
  margin-top: 1em;
  font-weight: bold;
  font-size: 110%;
  border: thin solid transparent;
  background-color: transparent;
  padding-left: 0.125em;
}

dl dd {
  margin: 0;
  padding: 0;
  margin-left: 1.5em;
}

dl.faq .desc {
  margin: 0;
  padding: 0.5em;
  font-size: 110%;
  display: none;
  background-color: #fffedb;
}

dl.faq button:hover,
dl.faq button:focus {
  background-color: #eee;
}

dl.faq button:focus {
  border-color: #630;
}

dl.faq button:hover {
  text-decoration: underline;
}

dl.faq button:active {
  background-color: #bbb;
}

dl.faq button[aria-expanded="false"]::before {
  content: url('../images/right-arrow-brown.png');
  padding-right: 0.35em;
}

dl.faq button[aria-expanded="true"]::before {
  content: url('../images/down-arrow-brown.png');
  padding-right: 0.35em;
}

.aa {
 color:black;
}


th {padding:20px;}

</style>


</head>

<body class="sub_page">
  <div class="hero_area">
    
    <c:import url="/WEB-INF/views/common/menubar.jsp" />
    
  </div>

  <!-- event section -->
  <section class="event_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h3 id="top">
          고객센터
        </h3>
        <p>
          자주 하는 질문
        </p>
      </div>
      
      <!-- 메뉴 -->
<div class="container">
  <section class="section knowledge-base">
    <section class="categories blocks">
    
    <table align="center">
    	<th>
    	<a href='#info01' class="blocks-item-link">
                <img src="https://soomgo-marketing.s3.ap-northeast-2.amazonaws.com/zendesk/360002081551.png" class="list-img">
                <h5 class="blocks-item-title">공지사항</h5>
                <p class="blocks-item-description"></p>
              </a>
    	</th>
    	
    	<th>
    	<a href='#info02' class="blocks-item-link">
                <img src="https://soomgo-marketing.s3.ap-northeast-2.amazonaws.com/zendesk/115001218027.png" class="list-img">
                <h5 class="blocks-item-title">선생님 가이드</h5>
                <p class="blocks-item-description"></p>
              </a>
    	</th>
    	<th>
    	<a href='#info03' class="blocks-item-link">
                <img src="https://soomgo-marketing.s3.ap-northeast-2.amazonaws.com/zendesk/115001217927.png" class="list-img">
                <h5 class="blocks-item-title">고객 가이드</h5>
                <p class="blocks-item-description"></p>
              </a>
    	</th>
    	<th>
    	<a href='#info04' class="blocks-item-link">
                <img src="https://soomgo-marketing.s3.ap-northeast-2.amazonaws.com/zendesk/115001218047.png" class="list-img">
                <h5 class="blocks-item-title">사이트 첫걸음</h5>
                <p class="blocks-item-description"></p>
              </a>
    	</th>
    </table>
  </section></section></div>
  <hr>
      <!-- 메뉴 -->
      
      
      
      <div class="event_container">   
        
<!-- 아코디언 메뉴 -->
<h5 id="info01">[공지사항]</h5>
<dl class="faq">
   <dt>
    <button aria-expanded="false" aria-controls="faq1_desc">
      레슨 서비스 제공 시 학원법을 준수해주세요.
    </button>
  </dt>
  <dd>
    <p id="faq1_desc" class="desc">
    	◎ 레슨 서비스를 제공하는 선생님께서는 학원의 설립운영 및 과외교습에 관한 법률
    	시행령 18조에 따라 환불 기준을 준수해야 합니다.<br>
    	<br>
    	◎ 환불조치<br>
    	&nbsp; 1) 교습(레슨)을 할 수 없거나 교습(레슨) 장소를 제공할 수 없게된 날 : 이미 납부한 교습비(레슨비) 등을 일할 계산한 금액 <br>
    	&nbsp; 2) 교습(레슨) 기간이 1개월 이내인 경우 <br>
    	&nbsp; &nbsp; &nbsp; - 교습(레슨) 시작 전 : 이미 납부한 교습비(레슨비) 전액 환불<br>
    	&nbsp; &nbsp; &nbsp; - 총 교습(레슨) 시간의 1/3 경과 전 : 이미 납부한 교습비(레슨비)의 2/3에 해당액 환불 <br>
    	&nbsp; &nbsp; &nbsp; - 총 교습(레슨) 시간의 1/2 경과 전 : 이미 납부한 교습비(레슨비)의 1/2에 해당액 환불 <br>
    	&nbsp; &nbsp; &nbsp; - 총 교습(레슨) 시간의 1/2 경과 후 : 반환하지 않음 <br>
    	&nbsp; 3) 교습(레슨) 기간이 1개월 초과하는 경우 <br>
    	&nbsp; &nbsp; &nbsp; - 교습(레슨) 시작 전 : 이미 납부한 교습비(레슨비) 전액 환불<br>
    	&nbsp; &nbsp; &nbsp; - 교습(레슨) 시작 후 : 반환 사유가 발생한 해당 월의 반환대상 교습비(레슨비) 등 과 나머지 월의 교습비(레슨비) 전액을 합산한 금액환불<br>
    	<br>
    </p>
  </dd>
  
  <dt>
    <button aria-expanded="false" aria-controls="faq2_desc">
      프로필 내 개인정보 작성 기준 안내
    </button>
  </dt>
  <dd>
    <p id="faq2_desc" class="desc">
    	◎ 개인정보, 연락을 유도하는 문구(이미지 포함)는 게시할 수 없습니다.<br>
    	&nbsp; - 주민등록번호 <br>
    	&nbsp; - 연락처, 이메일 주소, 개인 SNS 계정(아이디) <br>
    	&nbsp; - 고객에게 개인정보를 유도하는 문구 (예: 연락처를 남겨주시면 전화드리겠습니다. 등) <br>
		<br>
    	◎ 유출의 위험이 있는 금융정보, 차량정보는 게시할 수 없습니다. <br>
    	&nbsp; - 계좌번호, 차량번호 등 <br>
    </p>
  </dd>
  
  <dt>
    <button aria-expanded="false" aria-controls="faq3_desc">
      	[21.09.20 ~ 21.09.22] 추석 고객센터 휴무 안내
    </button>
  </dt>
  <dd>
    <p id="faq3_desc" class="desc">
    	◎ 9월 20일 ~ 9월 22일 고객센터 휴무 일정을 안내드립니다.<br>   	
    </p>
  </dd>
  
  <dt>
    <button aria-expanded="false" aria-controls="faq4_desc">
      	사업자 등록증 등록수량 변경 안내
    </button>
  </dt>
  <dd>
    <p id="faq4_desc" class="desc">
    	◎ 정책변경으로 사업자 등록증의 등록수량이 변경 될 예정입니다.<br>
    	&nbsp; - 변경 전 : 등록 가능한 사업자 등록증 수 2개 <br>
    	&nbsp; - 변경 후 : 등록 가능한 사업자 등록증 수 1개 <br> 	
    </p>
  </dd>
</dl>
<a href="#top">맨 위로 이동</a>
<hr>


<h5 id="info02">[선생님 가이드]</h5>
<dl class="faq">
   <dt>
    <button aria-expanded="false" aria-controls="faq5_desc">
      	견적은 어떻게 보내나요?
    </button>
  </dt>
  <dd>
    <p id="faq5_desc" class="desc">
    	◎ 고객의 요청서를 확인 후, 선생님과 조건이 맞는 요청서에 대해서만 견적(견적금액과 프로필)을 발송해주시면 됩니다.<br>
    	<br>
    	◎ 견적금액은 1시간 당/ 총 비용 중 택하여 보내실 수 있으며, 최소 1000원 이상의 금액을 숫자로 입력해 주시면 됩니다.<br>
 		<br>   
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq6_desc">
      	채팅방 기능을 자세히 알고 싶어요.
    </button>
  </dt>
  <dd>
    <p id="faq6_desc" class="desc">
    	◎ 요청서를 받고, 고객에게 견적을 보내면 채팅방이 자동으로 열립니다. <br>
    	<br>
    	◎ 채팅방 내의 채팅방 나가기를 클릭하면 해당 채팅방이 목록에서 없어집니다. <br>
    	&nbsp; (채팅방을 나갈 시, 채팅방 정보를 복구할 수 없으니 신중하게 선택하세요.)
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq7_desc">
      	받은 요청서에 모두 견적을 보내야 하나요?
    </button>
  </dt>
  <dd>
    <p id="faq7_desc" class="desc">
    	◎ 받은 요청서에 대해 모두 견적을 발송할 필요는 없습니다. <br>
    	&nbsp; (요청서 세부 내용 확인 후, 마음에 드는 요청서에 대해서만 견적을 보내시면 됩니다.)
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq8_desc">
      	예전에 견적을 보낸 고객과 다시 연락할 수 있나요?
    </button>
  </dt>
  <dd>
    <p id="faq8_desc" class="desc">
    	◎ 상대방이 채팅방에서 나가지 않았다면, 다시 연락할 수 있으며 채팅방에서 다시 채팅을 시작하면 상대방에게 메시지를 보낼 수 있습니다. <br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq9_desc">
      	프로필을 잘 쓰는 방법이 따로 있나요?
    </button>
  </dt>
  <dd>
    <p id="faq9_desc" class="desc">
    	◎ 프로필 사진을 반드시 등록해 주세요. <br>
    	&nbsp; - 얼굴/업체명이 잘 보이는 이미지가 좋습니다. <br>
    	<br>
    	◎ 한줄소개, 서비스 상세설명, 질문답변을 꼭 작성해주세요. <br>
    	&nbsp; - 고객들이 자주 묻는 질문이나 선택 가능한 서비스 옵션 등을 미리 작성해 두시면, 고객과 더 쉽게 상담을 진행 할 수 있습니다. <br>
    	<br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq10_desc">
      	리뷰는 왜 중요한가요?
    </button>
  </dt>
  <dd>
    <p id="faq10_desc" class="desc">
    	◎ 리뷰는 고객이 선생님을 선택하는 기준이 됩니다. <br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq11_desc">
      	선생님으로 가입하고 싶어요. 자격조건이 있나요?
    </button>
  </dt>
  <dd>
    <p id="faq11_desc" class="desc">
    	◎ 해당하는 과목에 전문 역량이 있는 분들이라면, 누구나 본인인증 후 선생님으로 가입해서 고객들을 만날 수 있습니다.<br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq12_desc">
      	더 많은 요청서를 받고 싶어요.
    </button>
  </dt>
  <dd>
    <p id="faq12_desc" class="desc">
    	◎ 서비스 지역 확대 <br>
    	&nbsp; - 이동 가능 거리를 늘리거나, 온라인으로도 서비스 제공이 가능하다면 지역을 전국으로 설정하는 것도 좋습니다.<br>
    	<br>
    	◎ 제공 서비스 추가 <br>
    	&nbsp; - 제공중인 서비스와 유사한 서비스를 프로필해 추가해 보세요.<br>
    	<br>
    </p>
  </dd> 
</dl>
<a href="#top">맨 위로 이동</a>
<hr>

<h5 id="info03">[고객 가이드]</h5>
<dl class="faq">
   <dt>
    <button aria-expanded="false" aria-controls="faq13_desc">
      	학생과 선생님은 어떻게 만나나요?
    </button>
  </dt>
  <dd>
    <p id="faq13_desc" class="desc">
    	◎ 원하시는 선생님께 채팅하기를 통해서 견적을 받고 구체적인 내용을 조율할 수 있습니다. <br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq14_desc">
      	선생님들은 어떤분들이신가요?
    </button>
  </dt>
  <dd>
    <p id="faq14_desc" class="desc">
    	◎ 선생님들은 다양한 분야의 전문 경력과 이력을 가진 분들입니다. <br>
    	&nbsp; - 선생님은 휴대전화 본인인증 후 제공 가능한 서비스 분야와 주소지(소재지), 이동 가능 거리 등을 직접 입력합니다. <br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq15_desc">
      	선생님에게 채팅을 보냈는데 답장이 오지 않아요.
    </button>
  </dt>
  <dd>
    <p id="faq15_desc" class="desc">
    	◎ 현장에서 과외를 진행 중인 선생님은 답변이 조금 늦어질 수 있습니다. <br>
    	&nbsp; 과외에 관해 궁금한 점을 채팅방에 자세히 남겨주시면, 선생님이 고객님의 메시지를 확인하고 빠르게 응답할 수 있습니다. <br>
    	<br>
    	◎ 선생님의 개인적인 사정에 따라 답변이 어려운 경우도 있으니, 같은 분야의 다른 선생님들께 상담을 받아보시는 것도 사이트를 이용하는 합리적인 방법입니다. <br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq16_desc">
      	선생님에게 리뷰는 어떻게 남기나요?
    </button>
  </dt>
  <dd>
    <p id="faq16_desc" class="desc">
    	◎ 선생님께 만족스러운 과외를 받으셨다면 프로필에 리뷰를 남겨주세요. <br>
    	<br>
    	◎ 선생님 리뷰는 선생님게 과외를 받은 이력이 있는 고객만 작성할 수 있습니다. <br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq17_desc">
      	친구에게 선생님을 소개하고 싶어요.
    </button>
  </dt>
  <dd>
    <p id="faq17_desc" class="desc">
    	◎ 다른 사람에게 선생님을 추천하거나 소개하고 싶다면 선생님의 프로필 링크를 공유해주세요.
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq18_desc">
      	한명의 선생님에게 여러 차례 리뷰를 남길 수 있나요?
    </button>
  </dt>
  <dd>
    <p id="faq18_desc" class="desc">
    	◎ 한명의 선생님에게는 리뷰를 한번만 작성할 수 있습니다. <br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq19_desc">
      	내 리뷰가 삭제되었어요.
    </button>
  </dt>
  <dd>
    <p id="faq19_desc" class="desc">
    	◎ 모든 리뷰는 작성자의 동의 없이 임의로 삭제되지 않습니다. <br>
    	<br>
    </p>
  </dd> 
 </dl>
 <a href="#top">맨 위로 이동</a>
 <hr>

<h5 id="info04">[사이트 첫걸음]</h5>
<dl class="faq">
   <dt>
    <button aria-expanded="false" aria-controls="faq20_desc">
      	어떤 서비스 인가요?
    </button>
  </dt>
  <dd>
    <p id="faq20_desc" class="desc">
    	◎ 고객이란? : 사이트를 통해 선생님으로부터 원하는 과목을 과외 받는 사람 <br>
    	&nbsp; - 고객이 원하는 선생님께 채팅을 보내면 선생님이 그에 답하고 조율을 통해 과외를 받을 수 있습니다. <br>
    	◎ 선생님이란? : 사이트를 통해 고객들에게 해당 과목에 대한 과외를 제공하는 사람 <br>
    	&nbsp; - 고객이 채팅을 선생님에게 보내면 채팅을 통해 자세한 내용을 조율을 해서 과외를 재공할 수 있습니다. <br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq21_desc">
      	선생님은 믿을 수 있나요?
    </button>
  </dt>
  <dd>
    <p id="faq21_desc" class="desc">
    	◎ 저희는 선생님의 자격이나 자질, 역량 등을 검증하기 위해 꾸준히 노력하고 있습니다. <br>
    	<br>
    	◎ 만일 선생님이 프로필에 허위 정보를 기재하였거나, 과외를 제공할 역량이 충분하지 않다고 판단되는 경우 사이트 계정을 제한하고 있습니다. <br>
    	<br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq22_desc">
      	사이트에서 활동하는 선생님은 사이트의 직원인가요?
    </button>
  </dt>
  <dd>
    <p id="faq22_desc" class="desc">
    	◎ 사이트에서 활동하는 선생님들은 사이트의 직원이 아닙니다. <br>
    	&nbsp; - 선생님은 각 과목에 전문 역량을 가진 개인, 업체로서 본인 인증 절차를 거친 뒤 선생님으로 등록한 전문가입니다. <br>
    	<br>
    	◎ 저희 사이트는 선생님과 고용이나 도급, 근로계약을 체결하지 않습니다. 따라서, 사이트 고객센터에서 선생님과 직접 통화할 수는 없습니다. <br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq23_desc">
      	선생님과는 어떻게 연락 하나요?
    </button>
  </dt>
  <dd>
    <p id="faq23_desc" class="desc">
    	◎ 맘에 드는 선생님께 채팅하기를 통해 요청을 하면 선생님과 채팅을 통해서 자세한 내용을 조율할 수 있습니다. <br>
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq24_desc">
      	아이디/비밀번호가 기억나지 않아요.
    </button>
  </dt>
  <dd>
    <p id="faq24_desc" class="desc">
    	◎ 사이트 로그인 페이지에서 아이디와 비밀번호 찾기를 통해 찾으실 수 있습니다.
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq25_desc">
      	회원가입은 어떻게 하나요?
    </button>
  </dt>
  <dd>
    <p id="faq25_desc" class="desc">
    	◎ 사이트의 회원으로 가입하기 위해서는 회원가입 페이지에서 가입을 진행하시면 됩니다.
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq26_desc">
      	계정 정보를 변경하고 싶어요.
    </button>
  </dt>
  <dd>
    <p id="faq26_desc" class="desc">
    	◎ 가입 시 등록하신 이메일주소, 전화번호, 비밀번호를 변경하고 싶으신 경우 마이페이지에서 수정이 가능하십니다.
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq27_desc">
      	탈퇴를 하고 싶어요.
    </button>
  </dt>
  <dd>
    <p id="faq27_desc" class="desc">
    	◎ 더는 사이트 이용을 원치 않으신다면 마이페이지를 통해 탈퇴를 진행하실 수 있습니다.
    </p>
  </dd>
  
   <dt>
    <button aria-expanded="false" aria-controls="faq28_desc">
      	상대가 약속한대로 이행하지 않았어요. 어떻게 하나요?
    </button>
  </dt>
  <dd>
    <p id="faq28_desc" class="desc">
    	◎ 저희 사이트는 매칭 플랫폼으로 직접 서비스를 제공하지 않고, 선생님-고객 간의 서비스에도 개입하지 않습니다. <br>
    	&nbsp; - 이로 인해 사이트에서는 직접적으로 보상 및 해결을 도와드리기 어려운 점 양해 부탁드립니다 <br>
		&nbsp; - 다만, 고객님의 피해를 확인할 수 있는 객관적 자료를 보내주시면, 원만한 해결을 위해서 최선을 다해 중재역할을 도와드리겠습니다.
    </p>
  </dd>  
</dl>
<a href="#top">맨 위로 이동</a>
<hr>
  

<!-- 아코디언 메뉴 -->
        
      </div>
    </div>
  </section>

  <!-- end event section -->

  <c:import url="/WEB-INF/views/common/footer.jsp" />

<!-- 아코디언 메뉴 -->
<script>
/*
*   This content is licensed according to the W3C Software License at
*   https://www.w3.org/Consortium/Legal/2015/copyright-software-and-document
*
*   File:   ButtonExpand.js
*
*   Desc:   Checkbox widget that implements ARIA Authoring Practices
*           for a menu of links
*/

/*
*   @constructor ButtonExpand
*
*
*/
var ButtonExpand = function (domNode) {

  this.domNode = domNode;

  this.keyCode = Object.freeze({
    'RETURN': 13
  });
};

ButtonExpand.prototype.init = function () {

  this.controlledNode = false;

  var id = this.domNode.getAttribute('aria-controls');

  if (id) {
    this.controlledNode = document.getElementById(id);
  }

  this.domNode.setAttribute('aria-expanded', 'false');
  this.hideContent();

  this.domNode.addEventListener('keydown',    this.handleKeydown.bind(this));
  this.domNode.addEventListener('click',      this.handleClick.bind(this));
  this.domNode.addEventListener('focus',      this.handleFocus.bind(this));
  this.domNode.addEventListener('blur',       this.handleBlur.bind(this));

};

ButtonExpand.prototype.showContent = function () {

  if (this.controlledNode) {
    this.controlledNode.style.display = 'block';
  }

};

ButtonExpand.prototype.hideContent = function () {

  if (this.controlledNode) {
    this.controlledNode.style.display = 'none';
  }

};

ButtonExpand.prototype.toggleExpand = function () {

  if (this.domNode.getAttribute('aria-expanded') === 'true') {
    this.domNode.setAttribute('aria-expanded', 'false');
    this.hideContent();
  }
  else {
    this.domNode.setAttribute('aria-expanded', 'true');
    this.showContent();
  }

};

/* EVENT HANDLERS */

ButtonExpand.prototype.handleKeydown = function (event) {

  console.log('[keydown]');

  switch (event.keyCode) {

    case this.keyCode.RETURN:

      this.toggleExpand();

      event.stopPropagation();
      event.preventDefault();
      break;

    default:
      break;
  }

};

ButtonExpand.prototype.handleClick = function (event) {
  this.toggleExpand();
};

ButtonExpand.prototype.handleFocus = function (event) {
  this.domNode.classList.add('focus');
};

ButtonExpand.prototype.handleBlur = function (event) {
  this.domNode.classList.remove('focus');
};

/* Initialize Hide/Show Buttons */

window.addEventListener('load', function (event) {

  var buttons =  document.querySelectorAll('button[aria-expanded][aria-controls]');

  for (var i = 0; i < buttons.length; i++) {
    var be = new ButtonExpand(buttons[i]);
    be.init();
  }

}, false);
</script>
<!-- 아코디언 메뉴 -->


</body>


</html>