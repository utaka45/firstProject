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
<body class="body">
<%@ include file="/WEB-INF/jsp/menu_header.jsp" %>
<div class="wrap">
	<div class="bulletin_list_wr bulletin_common">
		<h2 class="title">공지사항</h2>
		<ul class="bull_content">
			<li>[${BUll.seqno } 번글] <span class="bull_title">${BUll.title }</span></li>
			<li>
				<p class="left">작성자 : ${BUll.id}</p>
				<p class="right">
					<span>작성일 : ${BUll.bdate }</span>
				</p>
			</li>
			<li>${BUll.content }</li>
		</ul>
	</div>
</div>
</body>
</html>