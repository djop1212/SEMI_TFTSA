<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript" src="${pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

<script type="text/javascript">
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
			<h3 align="center">학생 프로필 추가</h3>
				<form action="upsprofile.do" method="post" enctype="multipart/form-data">
				<input type="hidden" name="user_no" value="${user_no }">
				<br>
					<table align="center">
						<tr>
							<th>프로필 사진</th>
							<td><input type="file" name="upfile" accept="image/*" ></td>
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
			                     <input type="text" id="stime" name="stime" value="" class="timePicker" placeholder="00:00">
			                     ~
			                     <input type="text" id="etime" name="etime" value="" class="timePicker" placeholder="24:00">
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
						<input type="button" value="취소" onclick="javascript:window.close(); return false;">
					</div>
				</form>
		</div>
</body>
</html>