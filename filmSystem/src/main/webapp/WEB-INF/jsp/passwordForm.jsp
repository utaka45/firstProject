<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣ ã��</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">
</head>
<body class="body">
<%@ include file="/WEB-INF/jsp/menu_header.jsp"%>
	<div align="center" class="wrap">
		<div class="findpass">
			<div class="entryfrom_box">
				<form:form action="../login/passwordFind.html" method="post" modelAttribute="pass">
					<h2 class="title" align="center">��й�ȣ ã��</h2>
					<table>
						<tr height="40px">
							<td><form:input path="user_id" cssClass="user_id"
									placeHolder="ID�� �Է��ϼ���" /></td>
						</tr>
						<tr height="40px">
							<td><form:input path="email" cssClass="email"
									placeHolder="�̸������Է��ϼ���" /></td>
						</tr>
					</table>
					<div class="btn_box">
						<input type="submit" value="��й�ȣ ã��"> 
						<input type="reset" value="�� ��">
					</div>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>