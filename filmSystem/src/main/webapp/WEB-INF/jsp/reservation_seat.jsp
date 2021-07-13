<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>시간 선택</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">

</head>
<body class="body">
	<div class="reserv_body reserv_time">
		<h2 class="title">시간 선택</h2>
		<form action="../write/seat.html">
			<div align="center">
				<div class="time_row">
					<input id="time1" type="radio" name="time" value="10:30" class="timebox">
					<label for="time1">10:30</label>
					
					<input id="time2" type="radio" name="time" value="11:30" class="timebox">
					<label for="time2">11:30</label>
					
					<input id="time3" type="radio" name="time" value="12:30" class="timebox">
					<label for="time3">12:30</label>
					
					<input id="time4" type="radio" name="time" value="13:30" class="timebox">
					<label for="time4">13:30</label>
				</div>
				<div class="time_row">
					<input id="time5" type="radio" name="time" value="14:30" class="timebox">
					<label for="time5">14:30</label>
					
					<input id="time6" type="radio" name="time" value="15:30" class="timebox">
					<label for="time6">15:30</label>
					
					<input id="time7" type="radio" name="time" value="16:30" class="timebox">
					<label for="time7">16:30</label>
					
					<input id="time8" type="radio" name="time" value="17:30" class="timebox">
					<label for="time8">17:30</label>
				</div>
			</div><!-- time row [끝] -->
			<div align="center"><input type="submit" value="좌석 선택" class="btn"></div>
		</form>
	</div>
</body>
</html>