<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선생님 프로필 추가</title>
<style type="text/css">
tr td{
	padding-left: 15px;
	padding-bottom: 10px;
}
</style>
</head>
<body class="sub_page">
		<div>
			<h3 align="center">선생님 프로필 추가</h3>
				<form action="" method="post">
				<br>
					<table align="center">
						<tr>
							<th>프로필 사진</th>
							<td>
								<img alt="" src="${ pageContext.servletContext.contextPath }/resources/images/member/profileDefault.gif"
									width="120px" height="120px">
								<br><a href="">프로필 사진 추가</a>
							</td>
						</tr>
						<tr>
							<th>과외스타일</th>
							<td>
								<select id="subject" name="selectSubject">
									<option value="selectnone">== 선택 ==</option>
									<option value="selectSweet">상냥한</option>
									<option value="selectAttentive">자상한</option>
									<option value="selectStrict">엄격한</option>
									<option value="selectIntell">지적인</option>
									<option value="selectInteres">재밌는</option>
									<option value="selectOutgoing">외향적인</option>
									<option value="selectIntrovert">내향적인</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>학력</th>
							<td>
								<select id="dayForm" name="selectDay">
									<option value="selectnone">== 선택 ==</option>
									<option value="selectHigh">고등학교 졸업</option>
									<option value="selectUni1">대학교 재학</option>
									<option value="selectUni2">대학교 졸업</option>
									<option value="selectUni3">대학원 재학</option>
									<option value="selectUni4">대학원 졸업</option>
									<option value="selectOffice">직장인</option>
									<option value="selectPro">전문강사</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>최소페이</th>
							<td>
								<select id="pay" name="selectPay">
									<option value="selectnone">== 선택 ==</option>
									<option value="select">15만원 이하</option>
									<option value="select">20만원</option>
									<option value="select">25만원</option>
									<option value="select">30만원</option>
									<option value="select">35만원</option>
									<option value="select">40만원</option>
									<option value="select">45만원</option>
									<option value="select">50만원</option>
									<option value="select">55만원</option>
									<option value="select">60만원</option>
									<option value="select">65만원</option>
									<option value="select">70만원</option>
									<option value="select">75만원</option>
									<option value="select">80만원 이상</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>과외가능지역</th>
							<td>
								<select id="dayLocal" name="selectLocal">
									<option value="selectnone">== 선택 ==</option>
									<option value="selectSeoul">서울</option>
									<option value="selectDeajeon">대전</option>
									<option value="selectDeagu">대구</option>
									<option value="selectPusan">부산</option>
									<option value="selectUlsan">울산</option>
									<option value="selectGwangju">광주</option>
									<option value="selectGG">경기도</option>
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
							<th>한줄소개</th>
							<td>
								<input type="text" name="infoForm" placeholder="예) 즐거운 수학시간">
							</td>
						</tr>
						<tr>
							<th>과목</th>
							<td>
								<select id="subject" name="selectSubject">
									<option value="selectnone">== 선택 ==</option>
									<option value="select">수학</option>
									<option value="select">영어</option>
									<option value="select">국어</option>
									<option value="select">사회</option>
									<option value="select">과학</option>
									<option value="select"></option>
									<option value="select"></option>
								</select>
							</td>
						</tr>
						<tr>
							<th>과외 가능 요일</th>
							<td>
								<select id="dayForm" name="selectDay">
									<option value="selectnone">== 선택 ==</option>
									<option value="selectMon">월요일</option>
									<option value="selectTue">화요일</option>
									<option value="selectWed">수요일</option>
									<option value="selectThu">목요일</option>
									<option value="selectFri">금요일</option>
									<option value="selectSat">토요일</option>
									<option value="selectSun">일요일</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>과외 가능 시간</th>
							<td>
								<input type="text" name="timeForm" placeholder="예) 18~20시, 주말가능">
							</td>
						</tr>
						<tr>
							<th>과외스타일</th>
							<td>
								<textarea rows="3" cols="15" name=""></textarea>
							</td>
						</tr>
					</table>
					<Br>
					<div align="center">
					<button type="submit">추가하기</button></div>
				</form>
		</div>
</body>
</html>