<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>    
<%@ include file="/WEB-INF/jsp/menu_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<div>
			<c:choose>
				<c:when test="${loginUser == null }">
					<jsp:include page="/film/index.html"/>
				</c:when>
			</c:choose>
		</div>
</body>
</html>