
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<title>과외찾기</title>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/ec0d746c97.js" crossorigin="anonymous"></script>


<style type="text/css">


hr.dashed {
  border-top: 3px dashed #bbb;
}
img{
	object-fit: cover ; 
}

* {
	font-family: "HSYuji-Regular", gulim, dotum, sans-serif;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: blue;
	text-decoration: underline;
}

.heading_container2 {
	display: block;
}
.tab{
	font-weight : 500;
	color: #212121;
}
.tab_title{
	font-size: 20px;
	font-weight : 600;
	color: #212121;
	padding-bottom : 5px;
}
h2 {
	font-size: 15px;
}
.tags {    
    display: inline-block;
    height: 24px;
    line-height: 24px;
    position: relative;
    margin: 0 16px 8px 0;
    padding: 0 10px 0 12px;
    background: #777;    
    -webkit-border-bottom-right-radius: 3px;    
    border-bottom-right-radius: 3px;
    -webkit-border-top-right-radius: 3px;    
    border-top-right-radius: 3px;
    -webkit-box-shadow: 0 1px 2px rgba(0,0,0,0.2);
    box-shadow: 0 1px 2px rgba(0,0,0,0.2);
    color: #fff;
    font-size: 12px;
    font-family: "Lucida Grande","Lucida Sans Unicode",Verdana,sans-serif;
    text-decoration: none;
    text-shadow: 0 1px 2px rgba(0,0,0,0.2);
    font-weight: bold;
}
.tags:before {
    content: "";
    position: absolute;
    top:0;
    left: -12px;
    width: 0;
    height: 0;
    border-color: transparent #777 transparent transparent;
    border-style: solid;
    border-width: 12px 12px 12px 0;        
    }

.tags:after {
    content: "";
    position: absolute;
    top: 10px;
    left: 1px;
    float: left;
    width: 5px;
    height: 5px;
    -webkit-border-radius: 50%;
    border-radius: 50%;
    background: #fff;
    -webkit-box-shadow: -1px -1px 2px rgba(0,0,0,0.4);
    box-shadow: -1px -1px 2px rgba(0,0,0,0.4);
    }
    

.search-icon {
	display: inline-block;
	width: 350px;
	text-align: center;
	border: 1px solid gray;
	border-radius: 20px;
}

.star-rating {
	width: 83px;;
}


.star-rating {
	width: 83px;
	background-color: #F4F4F4;
}

.star-rating, .star-rating span {
	display: inline-block;
	height: 15px;
	overflow: hidden;
	background : url(resources/images/search/star.png) no-repeat ;
}

.star-rating span {
	background-position: left bottom;
	line-height: 0;
	vertical-align: top;
}

.heading_container2 h3::before {
	content: "";
	position: absolute;
	top: 50%;
	left: 2px;
	width: 1px;
	height: 65px;
	background-color: #4bc5b8;
	-webkit-transform: translateY(-50%) rotate(20deg);
	transform: translateY(-50%) rotate(20deg);
}

.heading_container2 h3 {
	font-weight: bold;
	position: relative;
	margin-bottom: 15px;
}

.detail_info, .img_box {
}

.detail_info:hover, .img_box:hover {
}

#detailOption_wrapper {
	border: 1px solid gray;
	border-radius: 20px;
	background-color: #F4F4F4;
	animation: fadein 0.5s;
	animation-name: slidein;
}
 
@keyframes slidein {

	from {
	
    border: 1px solid gray;
	border-radius: 20px;
	background-color: #F4F4F4;
	opacity: 0;
    
  }

  to {
  
    opacity: 1;
    
  }
}

input[type=checkbox] {
	display: none;
}

.doSearchBtn {
	overflow: hidden;
	padding: 0;
	width: 104px;
	border-radius: 8px;
	color: #fff;
	font-size: 14px;
	height: 35px;
	background: #42acae;
	z-index: 1;
}

.searchBtn {
	margin: 0;
	padding: 0;
	width: 20%;
	height: 40px;
	border-radius: 0 8px 8px 0;
	color: #fff;
	font-weight: normal;
	text-align: center;
	text-indent: 0;
	background: #42acae;
}

.doBtnSearch { /* 
	padding-left: 52px; */
	width: 70%;
	height: 40px;
	font-size: 14px;
	font-weight: normal;
	line-height: 40px;
}

.adr_sel {
	height: 25px;
	border: none;
	box-sizing: border-box;
	color: #444;
	font-size: 13px;
	letter-spacing: -1px;
	line-height: 29px;
	text-align: left;
	vertical-align: top;
	white-space: nowrap;
	text-overflow: ellipsis;
}

select {
	padding: 0 10px 1px 6px;
	height: 30px;
	border: none;
	box-sizing: border-box;
	color: #444;
	font-size: 13px;
	letter-spacing: -1px;
	line-height: 29px;
	text-align: left;
	vertical-align: top;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.inpSel select {
	padding: 0 29px 1px 11px;
	width: 100%;
	height: 40px;
	border: none;
	box-sizing: border-box;
	color: #444;
	font-size: 13px;
	letter-spacing: -1px;
	line-height: 29px;
	text-align: left;
	vertical-align: top;
	white-space: nowrap;
	text-overflow: ellipsis;
	border: 1px solid gray;
	border-radius: 20px;
}

.container {
	display: flex;
}

.detailOption_box {
	margin: 0;
	/* position: static; */
	margin-top: 20px;
	padding: 0 20px;
	height: 45px;
}

.searchBox {
	margin: 0 auto;
}

ol, ul, li {
	list-style: none;
}

.option_title {
	float: left;
	width: 86px;
	color: #444;
	font-size: 14px;
	font-weight: bold;
	letter-spacing: -1px;
	line-height: 32px;
}

.option_check {
	float: left;
	width: 822px;
}

.option_check li {
	float: left;
	margin-right: 8px;
	margin-bottom: 8px;
}

.sri_check {
	padding: 0 15px;
	height: 32px;
	border: 2px solid #dedede;
	border-radius: 20px;
	line-height: 29px;
	background: #fff;
	box-sizing: border-box;
	-ms-user-select: none;
	-moz-user-select: -moz-none;
	-khtml-user-select: none;
	-webkit-user-select: none;
	user-select: none;
	cursor: pointer
}

.txt_check {
	display: inline-block;
	padding: 0;
	color: #4d4d4d;
	font-size: 13px;
	line-height: 29px;
	background: none;
	vertical-align: top;
}

.on {
	border-color: #5AE291 !important;
	color: #fff !important;
	background-color: #89E5AF !important;
}

.list_container {
	width: 100%;
	height: 100px;
}

.img_box {
	width: 20%;
	float: left;
	border: 1px solid gray;
	height: 100%;
}

.detail_info {
	width: 80%;
	float: right;
	height: 100%;
	border-radius: 25px;
}
</style>


<body class="sub_page">

	<div class="hero_area">

		<c:import url="/WEB-INF/views/common/menubar.jsp" />

	</div>

	<section class="event_section layout_padding">
	<div class="container">
		<div class="heading_container2">
			<h3>과외찾기</h3>
			
		</div>
	</div>
	<div class="container">
		<div class="searchBox">
			<div class="inpSel">

				<form name="searchInfo" method="post" accept-charset="UTF-8"
					style="text-align: center;">
					<div style="text-align: center; margin: 20px;">
						<select name="category" id="category"
							style="width: 150px; display: inline-block;">
							<option>전체</option>
							<c:forEach items="${ requestScope.categoryList }" var="c">
								<option value="${ c.category }">${ c.category }</option>
							</c:forEach>

						</select> <select name="sub_name" id="subject"
							style="width: 170px; display: inline-block;">
							<option>전체</option>
						</select> 
						
						<div class = "search-icon" style="height : 40px;">
						
						<i class="fas fa-search"></i>						
						<input style="width: 300px; border: none; height : 38px;" name="word" class="doBtnSearch"
							id="searchWord" type="text" placeholder="검색어를 입력해주세요."/> 
						</div>
							<input
							style="width: 130px;" type="button" onclick="searchSend()"
							value="검색" class="searchBtn"> <input type="hidden"
							name="l_grd_list"> <input type="hidden" name="stime">
						<input type="hidden" name="etime"> <input type="hidden"
							name="keyword_list"> <input type="hidden" name="day_list">
						<input type="hidden" name="area"> <input type="hidden"
							name="online_ok_list"> <input type="hidden"
							name="min_price"> <input type="hidden" name="max_price">

					</div>
					<!--<button value="검색" id="search" onclick="searchSend()">검색</button> -->

				</form>

			</div>

			<div class="doBtnBox" style="text-align: center;">
				<button class="doSearchBtn" value="상세옵션" id="doBtn"
					style="width: 505px; position: relative; top: 15px;">상세옵션</button>
			</div>
			<div id="detailOption_wrapper" style="display: none;">

				<div class="detailOption_box"
					style="width: 100%; display: inline-block; margin-top: 42px;">
					<h2 class="option_title" style="display: inline-block;">학력</h2>
					<ul class="option_check" id="ul_edu_all"
						style="display: inline-block;">
						<li><label class="sri_check" for="detailOption_education-1">
								<input type="checkbox" id="detailOption_education-1"
								class="inp_check"> <span class="txt_check">상관없음</span>
						</label></li>
						<li><label class="sri_check" for="detailOption_education-2">
								<input name="l_grd" type="checkbox"
								id="detailOption_education-2" class="inp_check edu"
								value="고등학교 졸업"> <span class="txt_check">고등학교 졸업</span>
						</label></li>
						<li><label class="sri_check" for="detailOption_education-3">
								<input name="l_grd" type="checkbox"
								id="detailOption_education-3" class="inp_check edu"
								value="전문대 재학"> <span class="txt_check">전문대 재학</span>
						</label></li>
						<li><label class="sri_check" for="detailOption_education-4">
								<input name="l_grd" type="checkbox"
								id="detailOption_education-4" class="inp_check edu"
								value="전문대 졸업"> <span class="txt_check">전문대 졸업</span>
						</label></li>
						<li><label class="sri_check" for="detailOption_education-5">
								<input name="l_grd" type="checkbox"
								id="detailOption_education-5" class="inp_check edu"
								value="대학교 재학"> <span class="txt_check">4년제 재학</span>
						</label></li>
						<li><label class="sri_check" for="detailOption_education-6">
								<input name="l_grd" type="checkbox"
								id="detailOption_education-6" class="inp_check edu"
								value="대학교 졸업"> <span class="txt_check">4년제 졸업</span>
						</label></li>
						<li><label class="sri_check" for="detailOption_education-7">
								<input name="l_grd" type="checkbox"
								id="detailOption_education-7" class="inp_check edu"
								value="대학원"> <span class="txt_check">대학원생</span>
						</label></li>
						
					</ul>


				</div>
				<hr>
				<div class="detailOption_box"
					style="width: 55%; display: inline-block;">
					<h2 class="option_title">지역</h2>
					<ul class="option_check" style="width: 370px;">
						<li><label class="sri_check" for=""> <select
								class="adr_sel" name="addressRegion" id="addressRegion1"
								style="border: none;"></select> <select class="adr_sel"
								name="addressDo" id="addressDo1" style="border: none;"></select>
								<select class="adr_sel" name="addressSiGunGu"
								id="addressSiGunGu1" style="border: none;"></select>
						</label></li>
					</ul>
				</div>
				<div class="detailOption_box"
					style="width: 40%; display: inline-block; padding: 0px;">
					<h2 class="option_title">대면 여부</h2>
					<ul class="option_check" id="ul_online_all"
						style="width: 270px; display: inline-block; padding: 0px;">
						<li><label class="sri_check" for="detailOption_online_all">
								<input type="checkbox" id="detailOption_online_all"
								class="inp_check online_ok" name="online_ok" value="all">
								<span class="txt_check">전체</span>
						</label></li>
						<li><label class="sri_check" for="detailOption_online_ok">
								<input type="checkbox" id="detailOption_online_ok"
								class="inp_check online_ok" name="online_ok" value="Y">
								<span class="txt_check">대면</span>
						</label></li>
						<li><label class="sri_check" for="detailOption_online_no">
								<input type="checkbox" id="detailOption_online_no"
								class="inp_check online_ok" name="online_ok" value="N">
								<span class="txt_check">비대면</span>
						</label></li>
					</ul>
				</div>
				<hr>

				<div class="detailOption_box"
					style="width: 100%; display: inline-block; height: 120px;">
					<h2 class="option_title">키워드</h2>
					<ul class="option_check" id="ul_keyword_all">

						<li><label class="sri_check" for="detailOption_keyword_all">
								<input type="checkbox" id="detailOption_keyword_all"
								class="inp_check"> <span class="txt_check">상관없음 </span>
						</label></li>

						<c:forEach items="${ requestScope.keywordList }" var="k">
							<li><label class="sri_check"
								for="detailOption_keyword_${ k.key_no }"> <input
									name="keyword" type="checkbox"
									id="detailOption_keyword_${ k.key_no }" class="inp_check key"
									value=" ${ k.type_per }"> <span class="txt_check">${ k.type_per }
								</span>
							</label></li>
						</c:forEach>
					</ul>
				</div>
				<hr>

				<div class="detailOption_box"
					style="width: 100%; display: inline-block;">
					<h2 class="option_title">요일선택</h2>
					<ul class="option_check" id="ul_day_all">
						<li><label class="sri_check" for="detailOption_week_all">
								<input type="checkbox" id="detailOption_week_all"
								class="inp_check"> <span class="txt_check">상관없음 </span>
						</label></li>
						<li><label class="sri_check" for="detailOption_week_mon">
								<input name="day" type="checkbox" id="detailOption_week_mon"
								class="inp_check week" value="월"> <span
								class="txt_check">월 </span>
						</label></li>
						<li><label class="sri_check" for="detailOption_week_tue">
								<input name="day" type="checkbox" id="detailOption_week_tue"
								class="inp_check week" value="화"> <span
								class="txt_check">화 </span>
						</label></li>
						<li><label class="sri_check" for="detailOption_week_wed">
								<input name="day" type="checkbox" id="detailOption_week_wed"
								class="inp_check week" value="수"> <span
								class="txt_check">수 </span>
						</label></li>
						<li><label class="sri_check" for="detailOption_week_thu">
								<input name="day" type="checkbox" id="detailOption_week_thu"
								class="inp_check week" value="목"> <span
								class="txt_check">목 </span>
						</label></li>
						<li><label class="sri_check" for="detailOption_week_fri">
								<input name="day" type="checkbox" id="detailOption_week_fri"
								class="inp_check week" value="금"> <span
								class="txt_check">금 </span>
						</label></li>
						<li><label class="sri_check" for="detailOption_week_sat">
								<input name="day" type="checkbox" id="detailOption_week_sat"
								class="inp_check week" value="토"> <span
								class="txt_check">토 </span>
						</label></li>
						<li><label class="sri_check" for="detailOption_week_sun">
								<input name="day" type="checkbox" id="detailOption_week_sun"
								class="inp_check week" value="일"> <span
								class="txt_check">일 </span>
						</label></li>
					</ul>


				</div>

				<hr>

				<div class="detailOption_box"
					style="width: 100%; display: inline-block;">
					<h2 class="option_title">시간선택</h2>

					<ul class="option_check">
						<li>
							<div class="input-a margin-t-10">
								<input type="text" id="stime" name="stime" value=""
									class="timePicker sri_check" placeholder="00:00"> ~ <input
									type="text" id="etime" name="etime" value=""
									class="timePicker sri_check" placeholder="24:00">
							</div>

						</li>
					</ul>


				</div>
				<hr>
				<div class="detailOption_box"
					style="width: 100%; display: inline-block;">
					<h2 class="option_title">희망금액</h2>

					<ul class="option_check">
						<li><label class="sri_check" for="detailOption_price_min">
								<input type="text" id="detailOption_price_min"
								class="inp_check min_price" name="min_price"
								style="height: 100%; border: none; text-align: right;"
								placeholder="만원"> <span class="txt_check"> </span>
						</label> ~ <label class="sri_check" for="detailOption_price_max">
								<input type="text" id="detailOption_price_max"
								class="inp_check max_price" name="max_price"
								style="height: 100%; border: none; text-align: right;"
								placeholder="만원"> <span class="txt_check"> </span>
						</label></li>
					</ul>


				</div>

			</div>
		</div>
	</div>
	
	</section>
		<hr>
	
	
	<div class="container">
		<div style="text-align: center; margin-top: 30px;">
			<ul>

				<c:choose>
					<c:when test="${ not empty tutorList }">
					<div class="container" style="padding-bottom : 30px;">
						<h4>선생님 top 10</h4>
					</div>
					
					
						<c:forEach items="${ requestScope.tutorList }" var="t" varStatus="statusTL">
						
							<li>
							<hr class="dashed">
						<c:url var="detail" value="/detail.do">
                        	<c:param name="user_no" value="${t.user_no }" />
                        	<c:param name="student_no" value="${ loginMember.user_no }"/>
                        	<c:param name="tutor_no" value="${t.user_no }"/>
                        </c:url>
                        
                        
                        <c:if test="${ not empty sessionScope.loginMember.user_no  }">
	                        <a href="${detail}">
                       	</c:if>
                       	
                       	<c:if test="${ !empty sessionScope.loginMember and sessionScope.loginMember.user_position eq 'M'  }">
                       	</c:if>
                       	
                       	<c:if test="${ empty sessionScope.loginMember.user_no }">
	                        <a href="#" class= "loginMove">
                       	</c:if>
                        
									<div class="list_container"
									style="width: 1000px; height: 200px; display: inline-block; margin-top: 20px;">

									<div
										style="display: inline-block; margin-left: auto; margin-right: auto; text-align: center; height: 200px; width: 200px; position: relative;">

										<div class="img_box"
											style="border-radius: 50%; height: 150px; width: 150px; text-align: center; position: absolute; top: 25px; left: 25px;">

											<img style="border-radius: 50%; height: 100%; width: 100%;"
												alt="이미지"
												src="${ pageContext.servletContext.contextPath }/resources/images/mypage/tutorImg/${t.pic}">
										</div>
									</div>

									<div class="detail_info"
										style="text-align: left; padding: 20px 15px 20px 20px; display: inline-block; height: 100%">
										
										<h4><div style= "display : inline-block; float:left; width:75%;  padding-bottom : 10px; font-weight : 700;">${ t.intro }</div></h4>
										

											
										<div style= "display : inline-block; float:right;width:24%; height : 80px;"> 
											<c:forTokens  var="sub_name" items="${ t.sub_name  }" delims=", ">
												<span class="tags">${ sub_name  }
												</span>
											</c:forTokens>
											
										</div>
										
										<div style="width: 100%; height: 70%;">
											<div style="width: 75%; display: inline-block; height: 100%; float: left; ">
												<span class="tab_title">${ t.style }</span><br> <span
													class="tab">지역 : ${ t.area }</span><br> <span
													class="tab">요일 : ${ t.day }</span><br> <span
													class="tab">시간 : ${ t.time }</span><br> <span
													class="tab">금액 : ${ t.min_pay }</span>
											</div>
											<div style="width: 13%; display: inline-block; height: 70px;  position:relative; float:left;">
											
														<c:forEach items="${ requestScope.avgList }" var="al" varStatus="status">
															<c:if test="${ al.user_no  eq  t.user_no }">
														
												<div style="display: inline-block; position:absolute; bottom:15px;">
												
																<input type="hidden" class="star_width"
																	value= "${ al.avg }"/>${ al.avg }
												</div>	
												<div style="display: inline-block;">
													<div class='star-rating' style="display : inline; position:absolute; bottom:0px;">
												

														<span class="star_wid" style= "width : ${ al.avg *20}%"></span>
													</div>
												</div>
															</c:if>
														</c:forEach>
													<!-- <ul>
														<li>
															<span class="fa-li">
																<i class="fas fa-star"></i>
															</span>
														</li>
													</ul> -->
												
											</div>
										</div>


									</div>
								</div>
							<c:if test="${ not empty sessionScope.loginMember.user_no or sessionScope.loginMember.user_position eq 'M'  }">
							</a>
							</c:if>
							
							</li>
						</c:forEach>
					
					
					
					</c:when>
					
					<c:when test="${ not empty searchTutor  }">
						<div class="container" style="padding-bottom : 30px;">
							<h4>과외 검색 결과</h4>
						</div>
						<c:forEach items="${ requestScope.searchTutor }" var="s" varStatus="statusST">
											
					<li>
					<hr class="dashed">
						<c:url var="detail" value="/detail.do">
                        <c:param name="user_no" value="${s.user_no }" />
                        <c:param name="student_no" value="${loginMember.user_no }"/>
                        <c:param name="tutor_no" value="${s.user_no }"/>
                        </c:url>
                        
						
                        	<c:if test="${ not empty sessionScope.loginMember.user_no  }">
		                        <a href="${detail}">
                        	</c:if>
                        	
                        	<c:if test="${ !empty sessionScope.loginMember and sessionScope.loginMember.user_position eq 'M'  }">
                        		<a href="#">
                        	</c:if>
                        	
                        	<c:if test="${ empty sessionScope.loginMember.user_no }">
		                        <a href="loginPage.do">
                        	</c:if>
                        
								<div class="list_container"
									style="width: 1000px; height: 200px; display: inline-block; margin-top: 20px;">

									<div
										style="display: inline-block; margin-left: auto; margin-right: auto; text-align: center; height: 200px; width: 200px; position: relative;">

										<div class="img_box"
											style="border-radius: 50%; height: 150px; width: 150px; text-align: center; position: absolute; top: 25px; left: 25px;">

											<img style="border-radius: 50%; height: 100%; width: 100%;"
												alt="이미지"
												src="${ pageContext.servletContext.contextPath }/resources/images/mypage/tutorImg/${s.pic}">
										</div>
									</div>

									<div class="detail_info"
										style="text-align: left; padding: 20px 15px 20px 20px; display: inline-block; height: 100%">
										
										<h4><div style= "display : inline-block; float:left; width:75%;  padding-bottom : 10px; font-weight : 700;">${ s.intro }</div></h4>
										

											
										<div style= "display : inline-block; float:right;width:24%; height : 80px;"> 
											<c:forTokens  var="sub_name" items="${ s.sub_name  }" delims=", ">
												<span class="tags">${ sub_name  }
												</span>
											</c:forTokens>
											
										</div>
										
										<div style="width: 100%; height: 70%;">
											<div style="width: 75%; display: inline-block; height: 100%; float: left; ">
												<span class="tab_title">${ s.style }</span><br> <span
													class="tab">지역 : ${ s.area }</span><br> <span
													class="tab">요일 : ${ s.day }</span><br> <span
													class="tab">시간 : ${ s.time }</span><br> <span
													class="tab">금액 : ${ s.min_pay }</span>
											</div>
											<div style="width: 13%; display: inline-block; height: 70px;  position:relative; float:left;">
											
														<c:forEach items="${ requestScope.avgList }" var="al" varStatus="status">
															<c:if test="${ al.user_no  eq  s.user_no }">
														
												<div style="display: inline-block; position:absolute; bottom:15px;">
												
																<input type="hidden" class="star_width"
																	value= "${ al.avg }"/>${ al.avg }
												</div>	
												<div style="display: inline-block;">
													<div class='star-rating' style="display : inline; position:absolute; bottom:0px;">
												

														<span class="star_wid" style= "width : ${ al.avg *20}%"></span>
													</div>
												</div>
															</c:if>
														</c:forEach>
													<!-- <ul>
														<li>
															<span class="fa-li">
																<i class="fas fa-star"></i>
															</span>
														</li>
													</ul> -->
												
											</div>
										</div>

									</div>
								</div>
						</a>
						
						</li>
					</c:forEach>

					</c:when>

					<c:otherwise>
					<div class="container" style= "margin-top : 100px; margin-bottom : 200px;">
						<img style="border-radius: 50%; height: 100%; width: 100%;"
												alt="이미지"
												src="${ pageContext.servletContext.contextPath }/resources/images/search/img_search_nothing.jpg">
					</div>
						
					</c:otherwise>
				</c:choose>

			</ul>
		</div>

	</div>

	<%-- 
<div style="text-align:center;">
<c:if test="${ currentPage <= 1 }">
	[맨처음]&nbsp;
</c:if>
<c:if test="${ currentPage > 1 }">
	<c:url var="ubl" value="/blist">
		<c:param name="page" value="1" />
	</c:url>
	<a href="${ ubl }">[맨처음]</a>
</c:if>
<!-- 이전 그룹으로 이동 처리 -->
<c:if test="${ (currentPage - 10) < startPage and (currentPage - 10) > 1 }">
	<c:url var="ubl2" value="/blist">
		<c:param name="page" value="${ startPage - 10 }"/>
	</c:url>
	<a href="${ ubl2 }">[이전그룹]</a>
</c:if>
<c:if test="${ !((currentPage - 10) < startPage and (currentPage - 10) > 1) }">
	[이전그룹]&nbsp;
</c:if>
<!-- 현재 페이지가 속한 페이지그룹의 숫자 출력 처리 -->
<c:forEach var="p" begin="${ startPage }" end="${ endPage }" step="1">
	<c:if test="${ p eq currentPage }">	
		<font color="red" size="4"><b>[${ p }]</b></font>
	</c:if>
	<c:if test="${ p ne currentPage }">
		<c:url var="ubl3" value="/blist">
			<c:param name="page" value="${ p }"/>
		</c:url>
		<a href="${ ubl3 }">${ p }</a>
	</c:if>
</c:forEach>
<!-- 다음 그룹으로 이동 처리 -->
<c:if test="${ (currentPage + 10) > endPage && (currentPage + 10) < maxPage }">
	<c:url var="ubl4" value="/blist">
		<c:param name="page" value="${ endPage + 10 }"/>
	</c:url>
	<a href="${ ubl4 }">[다음그룹]</a>
</c:if>
<c:if test="${ !((currentPage + 10) > endPage && (currentPage + 10) < maxPage) }">
	[다음그룹]&nbsp;
</c:if>
<!-- 맨끝 페이지로 이동 처리 -->
<c:if test="${ currentPage >= maxPage }">
	[맨끝]&nbsp;
</c:if>	
<c:if test="${ currentPage < maxPage }">
	<c:url var="ubl5" value="/blist">
		<c:param name="page" value="${ maxPage }"/>
	</c:url>
	<a href="${ ubl5 }">[맨끝]</a>
</c:if>
</div> --%>


		<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<script type="text/javascript">

function searchSend(){
	
	
	var l_grd_list = [];
	var keyword_list = [];
	var day_list = [];
	var sfnm = document.searchInfo;
	var area = $("select[name=addressDo] option:checked").text()+" "+$("select[name=addressSiGunGu] option:checked").text();
	if(area == "선택 선택"){
		area = "null";
	}
	var stime = $("#stime").val();
	var etime = $("#etime").val();
	
	var online_ok_list = [];
	
	if(stime == ""){
		stime = "null";
	}
	if(etime == ""){
		etime = "null";
	}
	
	var min_price = $(".min_price").val();
	var max_price = $(".max_price").val();
	
	if( $("#detailOption_wrapper").is(":hidden")){
		sfnm.action = "search.do";
		sfnm.submit();
	}else{

		var category = $("#category").val();
		var sub_name = $("#subject").val();
		var word = $("#searchWord").val();
		
		// 학력 
		$("input[name=l_grd]:checked").each(function() { 
		
			var l_grd = $(this).val(); 
			l_grd_list.push(l_grd);
			
		});
		if(l_grd_list == ""){
			l_grd_list.push("null");
		}
		
		
		// 키워드
		$("input[name=keyword]:checked").each(function() { 
		
			var keyword = $(this).val(); 
			keyword_list.push(keyword);
			
		});
		
		if(keyword_list == ""){
			keyword_list.push("null");
		}
		// 요일
		$("input[name=day]:checked").each(function() { 
		
			var day = $(this).val(); 
			day_list.push(day);
		});
		
		if(day_list == ""){
			day_list.push("null");
		}
		
		//대면 여부
		$("input[name=online_ok]:checked").each(function() { 
			
			if( $(this).val() == "all"){
				return true;
			}else{
				var online_ok = $(this).val(); 
				online_ok_list.push(online_ok);
			}
		});
		
		if(online_ok_list == ""){
			online_ok_list.push("null");
		}
		
		
		category : $("select[name=category] option:checked").text()
		sub_name : $("select[name=sub_name] option:checked").text()
		word : $("#searchWord").val()
		
		sfnm.l_grd_list.value = l_grd_list;
		sfnm.keyword_list.value = keyword_list;
		sfnm.day_list.value = day_list;
		sfnm.area.value = area;
		sfnm.etime.value = etime;
		sfnm.stime.value = stime;
		sfnm.online_ok_list.value = online_ok_list;
		
		sfnm.min_price.value = min_price;
		sfnm.max_price.value = max_price;
		sfnm.action = "detailSearch.do";
		sfnm.method = "get";
		sfnm.submit();
		
	}
}

	$.fn.setCursorPosition = function( pos )
	{
	  this.each( function( index, elem ) {
	    if( elem.setSelectionRange ) {
	      elem.setSelectionRange(pos, pos);
	    } else if( elem.createTextRange ) {
	      var range = elem.createTextRange()-2;
	      range.collapse(true);
	      range.moveEnd('character', pos);
	      range.moveStart('character', pos);
	      range.select();
	    }
	  });
	  
	  return this;
	};
$(function() {
	
	
	$("#detailOption_price_min").on('keyup', function() {

		var len = $("#detailOption_price_min").val().length-2;
		
		
		var min = $("#detailOption_price_min").val();
		var mi = min.replace(/[^0-9]/g,'');

		$(this).val(mi+"만원"); 
		$("#detailOption_price_min").focus().setCursorPosition ( len );
	});
	
	$("#detailOption_price_max").on('keyup change', function() {
		
		var len = $("#detailOption_price_max").val().length-2;
		
		var max = $("#detailOption_price_max").val();
		var ma = max.replace(/[^0-9]/g,'');
	
		$(this).val(ma+"만원"); 
		$("#detailOption_price_max").focus().setCursorPosition ( len );
	});
	
	
	
	$("#search").on('click', function(){
		
		var category = $("#category option:checked").text();
		var sub_name = $("#subject option:checked").text();
		var word = $("#searchWord").val();
		
		if( !(category == "전체")){
			if( !(sub_name == "전체")){
				
				/* $.ajax({
					url : "search.do",
					data :{ category : category, sub_name : sub_name, word : word },
					type : "post",
					dataType: "json",
					success : function(data) {
						console.log("success : " + data);

						//object ==> string 으로 변환
						var jsonStr = JSON.stringify(data);

						//string ==> json 객체로 바꿈
						var json = JSON.parse(jsonStr);
						
						var values = "";
						
						for ( var i in json.searchTutor) {
							
							values += "<h2>"+decodeURIComponent(json.searchTutor[i].intro).replace(/\+/gi, " ")
									+"</h2>";
							
							alert( decodeURIComponent(json.searchTutor[i].intro).replace(/\+/gi, " ") );
						} //for in

						$("#detail_info").html(values);
					},
					error : function(jqXHR, textstatus, errorthrown) {
						console.log("error : " + jqXHR + ", " + textstatus + ", "
								+ errorthrown);
					}
				}); //ajax */
				
			}
		}
			
		
	});
	
	
	$('#stime').timepicker({
		'timeFormat':'HH:mm',
		'minTime':'00:00',
		'maxTime':'23:30',
		'scrollDefaultNow': true
	}).on('changeTime',function() { //stime 을 선택한 후 동작
    var from_time = $("input[name='stime']").val(); //stime 값을 변수에 저장
    $('#etime').timepicker('option','minTime', from_time);//etime의 mintime 지정
	    
	    if ( $('#etime').val() && $('#etime').val() < from_time ) {
	        $('#etime').timepicker('setTime', from_time);
	//etime을 먼저 선택한 경우 그리고 etime시간이 stime시간보다 작은경우 etime시간 변경
	    }  
	});

	$('#etime').timepicker({
		'timeFormat':'HH:mm',
		'minTime':'00:00',
		'maxTime':'23:30'
	});//etime 시간 기본 설정

	$("#detailOption_education-1").on("click", function(){
		if( $("#detailOption_education-1").prop("checked") ){
			$(".edu").prop("checked", true);
		}else{
			$(".edu").prop("checked", false);
		}
	});
	
	$(".inp_check").change(function(){
        if($(".inp_check").is(":checked")){
       		if( $(this).attr('id') == "detailOption_education-1" ){
       			$('#ul_edu_all').children().children('.sri_check').addClass("on");
       		}else if( $(this).attr('id') == "detailOption_keyword_all" ) {
       			$('#ul_keyword_all').children().children('.sri_check').addClass("on");
       		}else if ( $(this).attr('id') == "detailOption_online_all" ){
       			$('#ul_online_all').children().children('.sri_check').addClass("on");
        	}else if( $(this).attr('id') == "detailOption_week_all" ){ 
        		$('#ul_day_all').children().children('.sri_check').addClass("on");
        	}else{
        		$(this).parent('.sri_check').addClass("on");
        	}
        }else{
        	if( $(this).attr('id') == "detailOption_education-1" ){
        		$('#ul_edu_all').children().children('.sri_check').removeClass("on");
        	}else if( $(this).attr('id') == "detailOption_keyword_all" ){
        		$('#ul_keyword_all').children().children('.sri_check').removeClass("on");
        	}else if( $(this).attr('id') == "detailOption_online_all" ){
        		$('#ul_online_all').children().children('.sri_check').removeClass("on");
        	}else if ( $(this).attr('id') == "detailOption_week_all" ){
        		$('#ul_day_all').children().children('.sri_check').removeClass("on");
        	}else{
        		$(this).parent('.sri_check').removeClass("on");
        	}
        }
    });
	
	$("#detailOption_online_all").on("click", function(){
		if( $("#detailOption_online_all").prop("checked") ){
			$(".online_ok").prop("checked", true);
		}else{
			$(".online_ok").prop("checked", false);
		}
	});
	
	$("#detailOption_keyword_all").on("click", function(){
		if( $("#detailOption_keyword_all").prop("checked") ){
			$(".key").prop("checked", true);
		}else{
			$(".key").prop("checked", false);
		}
	});
	
	$("#detailOption_week_all").on("click", function(){
		
		if( $("#detailOption_week_all").prop("checked") ){
			
			$(".week").prop("checked", true);
		}else{
			$(".week").prop("checked", false);
		}
	});
	
	$("#doBtn").click(function() {
		$("#detailOption_wrapper").toggle();
		
		if( !($("#detailOption_wrapper").is(":hidden")) ){

			$("#detailOption_wrapper").attr('style', 'width : 100%');
			$("#detailOption_wrapper").attr('style', 'text-align : center');
			$("#detailOption_wrapper").attr('style', 'float : left');
		}
	});
	
	/* $('.inp_check').click( function() {
        var i = $("input[name:'l_grd']").prop('checked',true);
        i.toggleClass("on");
	}); */

	/* $(".inp_check").change(function(){
        if($(".inp_check").is(":checked")){
       		if( $(".inp_check:checked").attr('id') == "detailOption_education-1" ){
       			
       			$('#ul_edu_all').children().children('.sri_check').addClass("on");
       		}else{
        		$(this).parent().addClass("on");
        	}
        }else{
        	if( $(this).attr('id') == "detailOption_education-1" ){
        		$('#ul_edu_all').children().children('.sri_check').removeClass("on");
        	}else{
        		$(this).parent('.sri_check').removeClass("on");
        	}
        }
    }); */
	
	$("#category").on('change', function(){
		var category = $("#category option:selected").val();
		
		$.ajax({
			url : "selectSubjec.do",
			data :{ category : category },
			type : "post",
			dataType : "json",
			success : function(data) {
				console.log("success : " + data);

				//object ==> string 으로 변환
				var jsonStr = JSON.stringify(data);
				//string ==> json 객체로 바꿈
				var json = JSON.parse(jsonStr);

				var values = "<option value=전체>전체</option>";
				
				for ( var i in json.subjectList) {
					values += "<option value="
					+decodeURIComponent(json.subjectList[i].sub_name)
					+">"+decodeURIComponent(json.subjectList[i].sub_name)
					+"</option>";
					
				} //for in

				$("#subject").html(values);
			},
			error : function(jqXHR, textstatus, errorthrown) {
				console.log("error : " + jqXHR + ", " + textstatus + ", "
						+ errorthrown);
			}
		}); //ajax
		
	 });
    
	$(".loginMove").click(function(){
		Swal.fire({
            title: '로그인 후 이용 가능합니다!',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#42acae',
            cancelButtonColor: '#6c757d',
            confirmButtonText: '로그인',
            cancelButtonText: '취소'
        }).then((result) => {
            if (result.isConfirmed) {
                    var url = "loginPage.do";
                    location.href = url;
            }
        })
		
	});

});


$(function(){
    areaSelectMaker("select[name=addressRegion]");
});

var areaSelectMaker = function(target){
    if(target == null || $(target).length == 0) {
        console.warn("Unkwon Area Tag");
        return;
    }

    var area = {
        "수도권" :{
            "서울" : [ "강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구" ],
            "경기" : [ "수원시 장안구", "수원시 권선구", "수원시 팔달구", "수원시 영통구", "성남시 수정구", "성남시 중원구", "성남시 분당구", "의정부시", "안양시 만안구", "안양시 동안구", "부천시", "광명시", "평택시", "동두천시", "안산시 상록구", "안산시 단원구", "고양시 덕양구", "고양시 일산동구",
                "고양시 일산서구", "과천시", "구리시", "남양주시", "오산시", "시흥시", "군포시", "의왕시", "하남시", "용인시 처인구", "용인시 기흥구", "용인시 수지구", "파주시", "이천시", "안성시", "김포시", "화성시", "광주시", "양주시", "포천시", "여주시", "연천군", "가평군",
                "양평군" ],
            "인천" : [ "계양구", "미추홀구", "남동구", "동구", "부평구", "서구", "연수구", "중구", "강화군", "옹진군" ]			
        },
        "강원권" :{
            "강원" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "충청권" :{
            "충북" : [ "청주시 상당구", "청주시 서원구", "청주시 흥덕구", "청주시 청원구", "충주시", "제천시", "보은군", "옥천군", "영동군", "증평군", "진천군", "괴산군", "음성군", "단양군" ],
            "충남" : [ "천안시 동남구", "천안시 서북구", "공주시", "보령시", "아산시", "서산시", "논산시", "계룡시", "당진시", "금산군", "부여군", "서천군", "청양군", "홍성군", "예산군", "태안군" ],
            "대전" : [ "대덕구", "동구", "서구", "유성구", "중구" ],
            "세종" : [ "세종특별자치시" ]			
        },
        "전라권" :{
            "전북" : [ "전주시 완산구", "전주시 덕진구", "군산시", "익산시", "정읍시", "남원시", "김제시", "완주군", "진안군", "무주군", "장수군", "임실군", "순창군", "고창군", "부안군" ],
            "전남" : [ "목포시", "여수시", "순천시", "나주시", "광양시", "담양군", "곡성군", "구례군", "고흥군", "보성군", "화순군", "장흥군", "강진군", "해남군", "영암군", "무안군", "함평군", "영광군", "장성군", "완도군", "진도군", "신안군" ],
            "광주" : [ "광산구", "남구", "동구", "북구", "서구" ]			
        },
        "경상권" : {
            "경북" : [ "포항시 남구", "포항시 북구", "경주시", "김천시", "안동시", "구미시", "영주시", "영천시", "상주시", "문경시", "경산시", "군위군", "의성군", "청송군", "영양군", "영덕군", "청도군", "고령군", "성주군", "칠곡군", "예천군", "봉화군", "울진군", "울릉군" ],
            "경남" : [ "창원시 의창구", "창원시 성산구", "창원시 마산합포구", "창원시 마산회원구", "창원시 진해구", "진주시", "통영시", "사천시", "김해시", "밀양시", "거제시", "양산시", "의령군", "함안군", "창녕군", "고성군", "남해군", "하동군", "산청군", "함양군", "거창군", "합천군" ],
            "부산" : [ "강서구", "금정구", "남구", "동구", "동래구", "부산진구", "북구", "사상구", "사하구", "서구", "수영구", "연제구", "영도구", "중구", "해운대구", "기장군" ],
            "대구" : [ "남구", "달서구", "동구", "북구", "서구", "수성구", "중구", "달성군" ],
            "울산" : [ "남구", "동구", "북구", "중구", "울주군" ]			
        },
        "제주권" : {
            "제주" : [ "서귀포시", "제주시" ]			
        }
    };

    for(i=0; i<$(target).length; i++){
        (function(z){
            var a1 = $(target).eq(z);
            var a2 = a1.next();
            var a3 = a2.next();

            //초기화
            init(a1, true);

            //권역 기본 생성
            var areaKeys1 = Object.keys(area);
            areaKeys1.forEach(function(Region){
                a1.append("<option value="+Region+">"+Region+"</option>");
            });

            //변경 이벤트
            $(a1).on("change", function(){
                init($(this), false);
                var Region = $(this).val();
                var keys = Object.keys(area[Region]);
                keys.forEach(function(Do){
                    a2.append("<option value="+Do+">"+Do+"</option>");    
                });
            });

            $(a2).on("change", function(){
                a3.empty().append("<option value=''>선택</option>");
                var Region = a1.val();
                var Do = $(this).val();
                var keys = Object.keys(area[Region][Do]);
                
                keys.forEach(function(SiGunGu){
                    a3.append("<option value="+area[Region][Do][SiGunGu]+">"+area[Region][Do][SiGunGu]+"</option>");    
                });
            });
        })(i);        

        function init(t, first){
            first ? t.empty().append("<option value=''>선택</option>") : "";
            t.next().empty().append("<option value=''>선택</option>");
            t.next().next().empty().append("<option value=''>선택</option>");
        }
    }
}




</script>
</html>