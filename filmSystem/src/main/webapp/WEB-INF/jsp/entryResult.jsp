<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>가입안내 메세지</title>
</head>
<body>
<c:choose>
	<c:when test="${sessionScope.loginUser != null}">
		<script>
		alert("가입을 축하합니다");
		location.href="../jsp/index.html";
		</script>
	</c:when>
	<c:otherwise>
		<script>
		alert("가입에 문제가 발생했습니다. 관리자에게 문의해 주세요");
		location.href="../jsp/index.html";
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>