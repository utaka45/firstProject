<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">
<style type="text/css">
.fontColor{color: #a834eb;}
</style>
</head>
<body class="body">
<%@ include file="/WEB-INF/jsp/menu_header.jsp"%>
<div align="center">
<div class="entryfrom_box">
<p><span class="fontColor">${id}</span> 님</p><br/>
<p>찾으신 비밀번호는: <span class="fontColor">${findPass } </span>입니다.</p>
</div>
</div>
</body>
</html>