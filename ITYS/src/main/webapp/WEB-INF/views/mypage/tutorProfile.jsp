<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선생님 프로필 추가</title>
<style type="text/css">
tr td {
	padding-left: 15px;
	padding-bottom: 10px;
}
</style>
<script type="text/javascript" src="${pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

<script type="text/javascript">
function categoryChange(e){
	var seoul = ["전체","강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
	var busan = ['전체','강서구','금정구','남구','동구','동래구','부산진구','북구','사상구','사하구','서구','수영구','연제구','영도구','중구','해운대구','기장군'];
	var daegu = ['전체','남구','달서구','동구','북구','서구','수성구','중구','달성군'];
	var daejeon = ['전체','대덕구','동구','서구','유성구','중구'];
	var gwangju = ['전체','광산구','남구','동구','북구','서구'];
	var ulsan = ['전체','남구','동구','북구','중구','울주군'];
	var incheon = ['전체','계양구','남구','남동구','동구','부평구','서구','연수구','중구','강화군','옹진군']
	var gyeonggi = ['전체','고양시','과천시','광명시','구리시','군포시','남양주시','동두천시','부천시','성남시','수원시','시흥시','안산시','안양시','오산시','의왕시','의정부시','평택시','하남시','가평군','광주시','김포시','안성시','양주군','양평군','여주군','연천군','용인시','이천군','파주시','포천시','화성시'];
	var gangwon = ['전체','강릉시','동해시','삼척시','속초시','원주시','춘천시','태백시','고성군','양구군','양양군','영월군','인제군','정선군','철원군','평창군','홍천군','화천군','황성군'];
	var chungbuk = ['전체','제천시','청주시','충주시','괴산군','단양군','보은군','영동군','옥천군','음성군','진천군','청원군'];
	var chungnam = ['전체','공주시','보령시','서산시','아산시','천안시','금산군','논산군','당진군','부여군','서천군','연기군','예산군','청양군','태안군','홍성군'];
	var jeonbuk = ['전체','군산시','김제시','남원시','익산시','전주시','정읍시','고창군','무주군','부안군','순창군','완주군','임실군','장수군','진안군'];
	var jeonnam = ['전체','광양시','나주시','목포시','순천시','여수시','여천시','강진군','고흥군','곡성군','구례군','담양군','무안군','보성군','신안군','여천군','영광군','영암군','완도군','장성군','장흥군','진도군','함평군','해남군','화순군'];
	var gyeongbuk = ['전체','경산시','경주시','구미시','김천시','문경시','상주시','안동시','영주시','영천시','포항시','고령군','군위군','봉화군','성주군','영덕군','영양군','예천군','울릉군','울진군','의성군','청도군','청송군','칠곡군'];
	var gyeongnam = ['전체','거제시','김해시','마산시','밀양시','사천시','울산시','진주시','진해시','창원시','통영시','거창군','고성군','남해군','산청군','양산시','의령군','창녕군','하동군','함안군','함양군','합천군'];
	var jegu = ['전체','서귀포시','제주시','남제주군','북제주군'];
	var target = document.getElementById("country");
	
	//console.log("e.value : "+e.value);
	if(e.value == "서울") var a = seoul;
	else if(e.value == "부산") var a = busan;
	else if(e.value == "대구") var a = daegu;
	else if(e.value == "대전") var a = daejeon;
	else if(e.value == "광주") var a = gwangju;
	else if(e.value == "울산") var a = ulsan;
	else if(e.value == "인천") var a = incheon;
	else if(e.value == "경기") var a = gyeonggi;
	else if(e.value == "강원") var a = gangwon;
	else if(e.value == "충북") var a = chungbuk;
	else if(e.value == "충남") var a = chungnam;
	else if(e.value == "전북") var a = jeonbuk;
	else if(e.value == "전남") var a = jeonnam;
	else if(e.value == "경북") var a = gyeongbuk;
	else if(e.value == "경남") var a = gyeongnam;
	else if(e.value == "제주") var a = jegu;
	
	target.options.length = 0;
	
	for (x in a){
		var opt = document.createElement("option");
		opt.value = a[x];
		opt.innerHTML = a[x];
		target.appendChild(opt);
	}
}

$(function () {
	$('#stime').timepicker({
		'timeFormat' : 'HH:mm',
		'minTime' : '06:00',
		'maxTime' : '23:30',
		'scrollDefaultNow' : true
	}).on('changeTime', function() { //stime 을 선택한 후 동작
		var from_time = $("input[name='stime']").val(); //stime 값을 변수에 저장
		$('#etime').timepicker('option', 'minTime', from_time);//etime의 mintime 지정

		if ($('#etime').val() && $('#etime').val() < from_time) {
			$('#etime').timepicker('setTime', from_time);
			//etime을 먼저 선택한 경우 그리고 etime시간이 stime시간보다 작은경우 etime시간 변경
		}
	});

	$('#etime').timepicker({
		'timeFormat' : 'HH:mm',
		'minTime' : '06:00',
		'maxTime' : '23:30'
	});//etime 시간 기본 설정
});
</script>
</head>
<body class="sub_page">
	<div>
		<h3 align="center">선생님 프로필 추가</h3>
		<form action="uptprofile.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="user_no" value="${user_no }"> <br>
			<table align="center">
					<tr>
						<th>프로필 사진</th>
						<td><input type="file" name="upfile" required accept="image/*"></td>
					</tr> 
						<tr>
							<th>한줄소개</th>
							<td>
								<input type="text" name="intro" placeholder="예) 즐거운 수학시간" size=40>
							</td>
						</tr>
						<tr>
							<th>학력</th>
							<td>
								<input type="text" name="l_grd" placeholder="예) 명지전문대 졸업, 서울대학교 재학중" size=40>
							</td>
						</tr>
						<tr>
							<th>과목</th>
							<td>
								수학<br>
								<input type="checkbox" name="sub_no" value="1">초등수학 
								<input type="checkbox" name="sub_no" value="2">중등수학 
								<input type="checkbox" name="sub_no" value="3">고등공통수학 
								<input type="checkbox" name="sub_no" value="4">고등문과수학 
								<input type="checkbox" name="sub_no" value="5">고등이과수학 
								<input type="checkbox" name="sub_no" value="6">편입수학<hr>
								영어<br>
								<input type="checkbox" name="sub_no" value="7">초등영어 
								<input type="checkbox" name="sub_no" value="8">중등영어 
								<input type="checkbox" name="sub_no" value="9">고등영어 
								<input type="checkbox" name="sub_no" value="10">수능영어 
								<input type="checkbox" name="sub_no" value="11">편입영어<hr>
								국어<br>
								<input type="checkbox" name="sub_no" value="12">초등국어 
								<input type="checkbox" name="sub_no" value="13">중등국어 
								<input type="checkbox" name="sub_no" value="14">고등국어 
								<input type="checkbox" name="sub_no" value="15">고등국어 문학 
								<input type="checkbox" name="sub_no" value="16">고등국어 화법과작문 
								<input type="checkbox" name="sub_no" value="17">고등국어 독서문법<hr>
								과학<br>
								<input type="checkbox" name="sub_no" value="18">초등과학 
								<input type="checkbox" name="sub_no" value="19">중등과학 
								<input type="checkbox" name="sub_no" value="20">고등과학 
								<input type="checkbox" name="sub_no" value="21">물리1 
								<input type="checkbox" name="sub_no" value="22">물리2 
								<input type="checkbox" name="sub_no" value="23">화학1 
								<input type="checkbox" name="sub_no" value="24">화학2<br>
								<input type="checkbox" name="sub_no" value="25">생명과학1 
								<input type="checkbox" name="sub_no" value="26">생명과학2 
								<input type="checkbox" name="sub_no" value="27">지구과학1 
								<input type="checkbox" name="sub_no" value="28">지구과학2<hr>
								사회<br>
								<input type="checkbox" name="sub_no" value="29">초등사회 
								<input type="checkbox" name="sub_no" value="30">중등사회 
								<input type="checkbox" name="sub_no" value="31">고등사회 
								<input type="checkbox" name="sub_no" value="32">세계사
								<input type="checkbox" name="sub_no" value="33">한국사 
								<input type="checkbox" name="sub_no" value="34">세계지리 
								<input type="checkbox" name="sub_no" value="35">윤리와사상<br>
								<input type="checkbox" name="sub_no" value="36">생활과윤리 
								<input type="checkbox" name="sub_no" value="37">사회문화 
								<input type="checkbox" name="sub_no" value="38">경제 
								<input type="checkbox" name="sub_no" value="39">법과정치 
								<input type="checkbox" name="sub_no" value="40">동아시아사 
								<input type="checkbox" name="sub_no" value="41">한국지리<hr>
								외국어공인인증<br>
								<input type="checkbox" name="sub_no" value="42">토익 
								<input type="checkbox" name="sub_no" value="43">토스 
								<input type="checkbox" name="sub_no" value="44">텝스 
								<input type="checkbox" name="sub_no" value="45">토플 
								<input type="checkbox" name="sub_no" value="46">아이엘츠 
								<input type="checkbox" name="sub_no" value="47">오픽<br>
								<input type="checkbox" name="sub_no" value="48">HSK/TSC 
								<input type="checkbox" name="sub_no" value="49">JPT/JLPT 
								<input type="checkbox" name="sub_no" value="50">DELE 
								<input type="checkbox" name="sub_no" value="51">DELE/DALF 
								<input type="checkbox" name="sub_no" value="52">TOREL 
							</td>
						</tr>
						<tr>
							<th>과외 가능 요일</th>
							<td>
								<input type="checkbox" name="day" value="월"> 월요일
								<input type="checkbox" name="day" value="화"> 화요일
								<input type="checkbox" name="day" value="수"> 수요일
								<input type="checkbox" name="day" value="목"> 목요일 
								<input type="checkbox" name="day" value="금"> 금요일
								<input type="checkbox" name="day" value="토"> 토요일
								<input type="checkbox" name="day" value="일"> 일요일
							</td>
						</tr>
						<tr>
							<th>과외 가능 시간</th>
							<td>
			                     <input type="text" id="stime" name="stime" value="" class="timePicker" placeholder="00:00">
			                     ~
			                     <input type="text" id="etime" name="etime" value="" class="timePicker" placeholder="24:00">
							</td>
						</tr>
						<tr>
							<th>1회당 수업시간(분)</th>
							<td><input type="number" name="class_min" min="30" max="480" step="10" placeholder="분"></td>
						</tr>
						<tr>
							<th>수업 횟수(월)</th>
							<td><input type="number" name="class_times" min="1" max="30" step="1" placeholder="월 1회"></td>
						</tr>
						<tr>
							<th>과외가능지역</th>
							<td>
								시/도: 
                   			<select name='city' onchange="categoryChange(this);" >
		                       <option value=''>전체</option>
		                       <option value="서울">서울특별시</option>
		                       <option value='부산'>부산광역시</option>
		                       <option value='대구'>대구광역시</option>
		                       <option value='인천'>인천광역시</option>
		                       <option value='광주'>광주광역시</option>
		                       <option value='대전'>대전광역시</option>
		                       <option value='울산'>울산광역시</option>
		                       <option value='경기'>경기도</option>
		                       <option value='강원'>강원도</option>
		                       <option value='충북'>충청북도</option>
		                       <option value='충남'>충청남도</option>
		                       <option value='전북'>전라북도</option>
		                       <option value='전남'>전라남도</option>
		                       <option value='경북'>경상북도</option>
		                       <option value='경남'>경상남도</option>
		                       <option value='제주'>제주도</option>
		                    </select>                                                  
                               구/군: 
		                    <select name='country' id="country">
		                       <option value=''>전체</option>
		                    </select>
							</td>
						</tr>
						<tr>
							<th>최소페이</th>
							<td>
								<select id="min_pay" name="min_pay">
									<option value="selectnone">== 선택 ==</option>
									<option value="15만원 이하">15만원 이하</option>
									<option value="20만원">20만원</option>
									<option value="25만원">25만원</option>
									<option value="30만원">30만원</option>
									<option value="35만원">35만원</option>
									<option value="40만원">40만원</option>
									<option value="45만원">45만원</option>
									<option value="50만원">50만원</option>
									<option value="55만원">55만원</option>
									<option value="60만원">60만원</option>
									<option value="65만원">65만원</option>
									<option value="70만원">70만원</option>
									<option value="75만원">75만원</option>
									<option value="80만원 이상">80만원 이상</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>화상가능여부</th>
							<td>
								<input type="radio" name="online_ok" value="Y"> 가능 &nbsp;
								<input type="radio" name="online_ok" value="N" checked> 불가능
							</td>
						</tr>
						<tr>
							<th>과외스타일</th>
							<td>
								<textarea rows="3" cols="26" name="style" maxlength="33"></textarea>
							</td>
						</tr>
						<tr>
							<th>성격</th>
							<td>
								<c:forEach items="${requestScope.keyList }" var="keyword">
									<input type="checkbox" name="key_no" value="${keyword.key_no }">
										${keyword.type_per }&nbsp;
									<c:if test="${ keyword.key_no eq 7}"><br></c:if>
									<c:if test="${ keyword.key_no eq 14}"><br></c:if>
								</c:forEach>
							</td>
						</tr>
					</table>
					<Br>
					<div align="center">
						<button type="submit">추가하기</button>
						<input type="button" value="취소" onclick="javascript:window.close(); return false;">
					</div>
				</form>
		</div>
</body>
</html>