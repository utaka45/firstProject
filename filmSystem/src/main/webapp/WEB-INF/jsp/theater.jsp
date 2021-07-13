<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/menu_header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title><spring:message code="theaterMenu.title"/></title>
</head>
<body class="body">
<form:form modelAttribute="theater" action="../film/putTheater.html" method="post"
	enctype="multipart/form-data">
<div align="center" class="wrap">
<h2><font color="green"><spring:message code="filmMenu.title"/></font></h2>
<table>
	<tr height="40px"><td>이름</td>
		<td><form:input path="locName" cssClass="locName" maxlength="30"/></td>
		<td><font color="red"><form:errors path="locName"/></font></td>
	</tr>
	<tr height="40px"><td>주소</td>
		<td><form:input path="locAddr" cssClass="locAddr" maxlength="60"/></td>
		<td><font color="red"><form:errors path="locAddr"/></font></td>
	</tr>
</table>
<div>
<input type="submit" value="등 록"/><input type="reset" value="취 소"/>
</div>
</div>
</form:form>
</body>
</html>