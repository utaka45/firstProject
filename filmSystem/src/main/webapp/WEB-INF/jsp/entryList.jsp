<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
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
<div align="center" class="wrap">
	<div class="entry_list_wr">
		<form:form modelAttribute="user" action="../read/entryUpdate.html" method="post">
			<form:hidden path="user_id"/><form:hidden path="user_name"/>
			<div align="center">
				<div class="entryfrom_box">
					<h2>정보 수정</h2>
					<table>
						<tr><td><form:password path="password" 
							cssClass="password" maxlength="20" placeHolder="암호"/></td>
						</tr>
						<tr><td><form:input path="phone" 
							cssClass="phone" maxlength="50"/></td>
						</tr>
						<tr><td><form:input path="email" 
							cssClass="email" maxlength="30"/></td>
						</tr>
						<tr><td><form:input path="birthday" 
							cssClass="birthday" maxlength="20"/></td>
						</tr>
					</table>
					<div class="btn_box">
						<input type="submit" value="변 경"/>
						<input type="reset" value="취 소"/>
					</div>
				</div>
			</div>	
		</form:form>
	</div>
</div>
</body>
</html>