<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">
</head>
<body class="body" >
<%@ include file="/WEB-INF/jsp/menu_header.jsp" %>
<div align="center">
<h2>������ ����</h2><br/>
<form:form action="../film/writeBullentin.html" method="post" modelAttribute="bullentin">
�� �� : <form:input path="title" placeHolder="����"/><br/>
<form:textarea rows="5" cols="80" path="content" placeHolder="����"></form:textarea>
<div align="center">
<input type="submit" value="�ۿø���"/><input type="reset" value="�� ��"/>
</div>
</form:form>
</div>
</body>
</html>