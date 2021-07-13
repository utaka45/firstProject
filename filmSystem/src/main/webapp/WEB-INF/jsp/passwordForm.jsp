<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>비밀번호 찾기</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">
</head>
<body class="body">
<%@ include file="/WEB-INF/jsp/menu_header.jsp"%>
	<div align="center" class="wrap">
		<div class="findpass">
			<div class="entryfrom_box">
				<form:form action="../login/passwordFind.html" method="post" modelAttribute="pass">
					<h2 class="title" align="center">비밀번호 찾기</h2>
					<table>
						<tr height="40px">
							<td><form:input path="user_id" cssClass="user_id"
									placeHolder="ID를 입력하세요" /></td>
						</tr>
						<tr height="40px">
							<td><form:input path="email" cssClass="email"
									placeHolder="이메일을입력하세요" /></td>
						</tr>
					</table>
					<div class="btn_box">
						<input type="submit" value="비밀번호 찾기"> 
						<input type="reset" value="취 소">
					</div>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>