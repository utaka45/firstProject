<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h2>���� �ߺ� Ȯ��</h2>
	<form action="../idcheck/idcheck.html" method="get" name="frm">
	<input type="hidden" name="OK_ID" value="${ID }"/>
	�� �� : <input type="text" name="USER_ID" value="${ID }"/>
	<input type="submit" value="�ߺ� �˻�"/><br/>
	<c:if test="${ DUP == 'YES' }">
		<script type="text/javascript">
			opener.document.frm.id.value = '';	
		</script>
	${ID }�� �̹� ��� ���Դϴ�.
	</c:if>
	<c:if test="${ DUP == 'NO' }">
	${ID }�� ��� �����մϴ�.
	<input type="button" value="���" onClick="idOK()"/>
	</c:if>
	</form>
</div>
<script type="text/javascript">
function idOK(){
	opener.document.frm.user_id.value = document.frm.OK_ID.value;
	opener.document.frm.REALID.value = document.frm.OK_ID.value;
	opener.document.frm.IDCHECK.value = "OK";
	self.close();
}
</script>
</body>
</html>









