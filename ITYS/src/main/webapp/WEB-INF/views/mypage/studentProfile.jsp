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
				<form action="upsprofile.do" method="post">
				<input type="hidden" name="user_no" value="${user_no }">
				<br>
					<table align="center">
						<tr>
							<th rowspan=2>프로필 사진</th>
							<td>
								<img alt="" src="${ pageContext.servletContext.contextPath }/resources/images/member/profileDefault.gif"
									width="120px" height="120px">
							</td>
							
						</tr>
						<tr>
							<td><input type="file" name="pic"></td>
						</tr>
						<tr>
							<th>학년</th>
							<td>
								<select id="stu_job" name="stu_job">
									<option value="selectnone">== 선택 ==</option>
									<option value="유치원생">유치원생</option>
									<option value="초등학생">초등학생</option>
									<option value="중학생">중학생</option>
									<option value="고등학생">고등학생</option>
									<option value="대학생">대학생</option>
									<option value="재수생">재수생</option>
									<option value="직장인">직장인</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>과외 가능 요일</th>
							<td>
								<input type="checkbox" name="day" value="월"> 월요일
								<input type="checkbox" name="day" value="화"> 화요일
								<input type="checkbox" name="day" value="수"> 수요일
								<input type="checkbox" name="day" value="목"> 목요일<br>
								<input type="checkbox" name="day" value="금"> 금요일
								<input type="checkbox" name="day" value="토"> 토요일
								<input type="checkbox" name="day" value="일"> 일요일
							</td>
						</tr>
						<tr>
							<th>과외 가능 시간</th>
							<td>
								<input type="text" name="time" placeholder="예) 18~20시, 주말가능" size="25">
							</td>
						</tr>
						<tr>
							<th>바라는 점</th>
							<td>
								<textarea rows="3" cols="26" name="stu_wish"></textarea>
							</td>
						</tr>
					</table>
					<Br>
					<div align="center">
						<button type="submit">추가하기</button>
						<input type="button" value="취소" onclick="javascript:history.go(-1); return false;">
					</div>
				</form>
		</div>
</body>
</html>