<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<c:if test="${ ! empty FILM }">
			<div class="film_read_wr">
				<h2 class="">${FILM.filmTitle }</h2>
				<div class="box_left">
					<img alt="${FILM.filmTitle }" src="${pageContext.request.contextPath }/upload/${FILM.filmPoster }"
							width="250" height="300">
				</div>
				<div class="box_right">
					<ul>
						<li>
							<span>장르 :</span>
							${FILM.genre }
						</li>
						<li>
							<span>감독 :</span>
							${FILM.director }
						</li>
						<li>
							<span>등급 :</span>
							${FILM.filmRating }
						</li>
						<li>
							<span>개봉일 :</span>
							${FILM.releaseDate }
						</li>
						<li>
							<span>내용 :</span>
							${FILM.filmDescription }
						</li>
					</ul>
				</div>
			</div>
		</c:if>
</body>
</html>


