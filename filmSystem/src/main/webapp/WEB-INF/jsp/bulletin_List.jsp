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
		<div class="bull_list_wr bulletin_common">
			<h2 class="title">공지 사항</h2>
			<c:if test="${requestScope.BULLLIST == null }">
				<p>등록된 게시글이 존재하지 않습니다.</p>
			</c:if>
			<c:if test="${BULLLIST != null }">
			<ul class="bull_list_content">
				<li class="short">글번호</li>
				<li class="short">작성자</li>
				<li>글제목</li>
				<li>작성일</li>
			</ul>
				<c:forEach var="bull" items="${BULLLIST }">
				<ul class="bull_list_content">
					<li class="short">${bull.seqno }</li>
					<li class="short">${bull.id }</li>
					<li>
						<a href="../read/readDetail.html?SEQNO=${bull.seqno }">${bull.title }</a>
					</li>
					<li>${bull.bdate }</li>
				</ul>
				</c:forEach>
			<c:forEach begin="1" end="${pageCount }" var="page">
				<div class="page_box">
					<a href="../read/read.html?pageNo=${page }">${page }</a>
				</div>
			</c:forEach>
			</c:if>
		</div>
	</div>
</body>
</html>