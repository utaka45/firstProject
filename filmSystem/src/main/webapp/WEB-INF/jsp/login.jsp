<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!-- 비교와 반복 -->
<!-- spring에서 사용하는 taglib: 객체를 주고받는 taglib-->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 화면</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">
</head>
<body class="body">
<%@ include file="/WEB-INF/jsp/menu_header.jsp" %>
	<div align="center" class="wrap">
		<div class="login_wr">
			<div class="entryfrom_box">
				<form:form action="login.html" method="post" modelAttribute="user">
					<spring:hasBindErrors name="user">
						<font class="common_color">
							<c:forEach var="error" items="${errors.globalErrors }">
								<spring:message code="${error.code }"/>
							</c:forEach>
						</font>
				</spring:hasBindErrors>
				<h2 class="title" align="center">로그인</h2>
				<table>
					<tr height="40px">
						<td>
							<form:input path="user_id" cssClass="user_id" placeHolder="ID를 입력하세요"/>
							<p>
								<font class="common_color"><form:errors path="user_id"/></font>
							</p>
						</td>
					</tr>
					<tr height="40px">
						<td>
							<form:password path="password" cssClass="password" placeHolder="비밀번호를 입력하세요"/>
							<p>
								<font class="common_color"><form:errors path="password"/></font>
							</p>
						</td>
					</tr>
				</table>
				<div class="btn_box">
					<input type="submit" value="로그인">
					<input type="reset" value="취소">				
				</div>
			</div>
		</div>
		</form:form>
	</div>
</body>
</html>