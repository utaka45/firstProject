<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���Ծȳ� �޼���</title>
</head>
<body>
<c:choose>
	<c:when test="${sessionScope.loginUser != null}">
		<script>
		alert("������ �����մϴ�");
		location.href="../jsp/index.html";
		</script>
	</c:when>
	<c:otherwise>
		<script>
		alert("���Կ� ������ �߻��߽��ϴ�. �����ڿ��� ������ �ּ���");
		location.href="../jsp/index.html";
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>