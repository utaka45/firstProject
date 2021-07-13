<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예약 화면</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">
<style>
/* book_template css */
.book_template {}
.book_template .box {padding:30px;}
.common_temp {width:25%;float:left;height:80vh;}
.common_temp h3 {font-size:15px;color:#333;text-align:center;padding:20px 0 10px;}
.temp_loc {background-color:#ddd; }
.temp_film {background-color:#eee;}
.temp_date {background-color:#ddd;}
.temp_hall_time {background-color:#eee;}
.common_temp .box {}

</style>
</head>
<body class="body">
<%@ include file="/WEB-INF/jsp/menu_header.jsp" %>
		

<div class="book_template">
	<form>
		<div class="temp_loc common_temp">
			<div class="box">
				<c:choose>
					<c:when test="${BODY != null }">
						<jsp:include page="${BODY}"/>
					</c:when>
					<c:otherwise>
						<a class="booking_btn" href="../write/reservation_loc.html">예매 시작</a>
					</c:otherwise>
			</c:choose>
			</div>
		</div>
		<div class="temp_film common_temp">
			<div class="box">
					<c:choose>
					<c:when test="${BODY1 != null }">
						<jsp:include page="${BODY1 }"/>
					</c:when>
			</c:choose>
			</div>
		</div>
		<div class="temp_date common_temp">
			<div class="box">
					<c:choose>
						<c:when test="${BODY2 != null }">
							<jsp:include page="${BODY2 }" />
						</c:when>
					</c:choose>
				</div>
		</div>
		<div class="temp_hall_time common_temp">
			<div class="box box_time">
						<c:choose>
					<c:when test="${BODY3 != null }">
						<jsp:include page="${BODY3 }"/>
					</c:when>
			</c:choose>
			</div>
		</div>
		<div class="result_box">
			<ul>
				<li>${locName} <span>></span></li>
				<li>${filmName} <span>></span></li>
				<li>${date}</li>
			</ul>
		</div>	
	</form>
</div>
</body>
</html>