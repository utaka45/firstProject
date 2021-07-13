<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� - ��ȭ�� ����</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">
</head>
<body>
<div class="reserv_body reserv_loc">
	<h2 class="title">��ȭ�� ����</h2>
	<table>
	<c:forEach var="theater" items="${theaterList}">
		<tr>
			<td class="list_box">
				<a href="../write/reservation_film.html?pid=${theater.locId}&name=${theater.locName}">${theater.locName}</a>
			</td>
		</tr>
	</c:forEach>
	</table>

<form name="move" method="post" >
	<input type="hidden" name="pid"/>
</form>
</div>
</body>
</html>