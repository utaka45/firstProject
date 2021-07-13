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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">

</head>
<body class="body">
<%@ include file="/WEB-INF/jsp/menu_header.jsp" %>
	<div class="wrap reserv_body" align="center">
		<div class="reserv_seat">
			<p class="screen_box">SCREEN</spanp>
				<form action="../write/confirm.html">
				<c:forEach var="row" begin="0" end="4">
					<c:forEach var="col" begin="0" end="9">
						<input class="seat_input" type="radio" name="seat" value="seat${row }${col}" id="seat${row }${col}"/>
						<label for="seat${row }${col}" class="seat_lab">seat${row }${col}</label>
					</c:forEach>
					<br/>
				</c:forEach><br/>
				<input type="submit" value="좌석 선택" class="btn"/>
			</form>
			<c:forEach var="seat" items="${seatList }">
				<script type="text/javascript">
				var name="${seat.seat}";
				var elem = document.getElementById(name);//input id
				elem.disabled=true;
				document.querySelector("[for="+name+"]").setAttribute("class", "disabled");
				document.querySelector('booked').textContent;
				</script>		
			</c:forEach>
		</div><!-- box in wrap -->
	</div><!-- wrap -->
	<!--  -->
	
</body>
</html>