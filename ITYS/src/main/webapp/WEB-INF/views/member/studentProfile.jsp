<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 프로필 추가</title>
<style type="text/css">
tr td{
	padding-left: 15px;
	padding-bottom: 10px;
}
</style>
</head>
<body class="sub_page">
		<div>
			<h3 align="center">학생 프로필 추가</h3>
				<form action="" method="post">
				<br>
					<table align="center">
						<tr>
							<th>프로필 사진</th>
							<td>
								<img alt="" src="${ pageContext.servletContext.contextPath }/resources/images/member/profileDefault.gif"
									width="120px" height="120px">
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
							<th>바라는 점</th>
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