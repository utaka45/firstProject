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
<h2>공지글 쓰기</h2><br/>
<form:form action="../film/writeBullentin.html" method="post" modelAttribute="bullentin">
제 목 : <form:input path="title" placeHolder="제목"/><br/>
<form:textarea rows="5" cols="80" path="content" placeHolder="내용"></form:textarea>
<div align="center">
<input type="submit" value="글올리기"/><input type="reset" value="취 소"/>
</div>
</form:form>
</div>
</body>
</html>