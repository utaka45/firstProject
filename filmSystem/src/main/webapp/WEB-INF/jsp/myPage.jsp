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
</head>
<body class="body">
<%@ include file="/WEB-INF/jsp/menu_header.jsp" %>
<div class="wrap">
	<div class="mypage_wr">
		<h2 align="center" class="title">예매 내역 조회</h2>
		<div align="center">
			<table class="mypage_content">
				<tr>
					<th>영화관</th>
					<th>영화</th>
					<th>날짜</th>
					<th>시간</th>
					<th>좌석번호</th>
					<th>예매취소</th>
				</tr>
				<c:forEach var="con" items="${confirmList}">
				<form action="../myPage/delete.html" method="post">
					<input type="hidden" name="con" value="${con.confirmId}"/>
					<tr>
						<td align="center">${con.locName }</td>
						<td align="center">${con.filmTitle }</td>
						<td align="center">${con.confirmDate }</td>
						<td align="center">${con.confrimTime }</td>
						<td align="center">${con.seat }</td>
						<td align="center"><input class="cancel_btn" type="submit" value="예매 취소" name="btn"/></td>
					</tr>
					</form>
				</c:forEach>
			</table>
	</div>
</div>

</body>
</html>