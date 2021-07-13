<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/menu_header.jsp" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>영화 조회</title>

<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">

</head>
<body class="body">
<div align="center" class="wrap">
	<div class="film_index_wr">
		<h2>영화</h2>
			<c:forEach var="film" items="${filmList }">
				<ul class="box_ul">
					<li class="title">${film.filmTitle }</li>
					<li><a href="../read/filmListView.html?pid=${film.filmId }"><img alt="" src="${pageContext.request.contextPath }/upload/${film.filmPoster}"
						width="250" height="300"></a></li>
					<li class="btnwr"><a href="../write/book_template.html">예매하기</a></li>
				</ul>
			</c:forEach>
	</div>
</div>

</body>

</html>

