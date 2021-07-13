<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
<script type="text/javascript">
function idCheck(){
	if(document.frm.user_id.value == ''){
		alert("���̵� �Է��ϼ���.");
		document.frm.user_id.focus();
		return;
	}
	var url="../idcheck/idcheck.html?USER_ID="+document.frm.user_id.value;
	window.open(url,"_blank_","width=450,height=200");
}
function formCheck(fm){
	if(fm.user_id.value == ''){
		alert("���̵� �Է��ϼ���."); fm.user_id.focus(); return false;
	}
	if(fm.IDCHECK.value == ''){
		alert("���̵� �ߺ� �˻縦 ���ּ���."); return false;
	}
	if(fm.password.value == ''){
		alert("��ȣ�� �Է��ϼ���."); fm.password.focus(); return false;
	}
	if(fm.CONFIRM.value == ''){
		alert("��ȣ Ȯ���� ���� �ٽ� �Է��� �ּ���"); 
		fm.CONFIRM.focus(); return false;
	}
	if(fm.password.value != fm.CONFIRM.value){
		alert("��ȣ�� ��ġ���� �ʽ��ϴ�."); 
		fm.password.focus(); return false;
	}
	if(fm.user_name.value == ''){
		alert("�̸��� �Է��ϼ���."); fm.user_name.focus(); return false;
	}
	if(fm.phone.value == ''){
		alert("����ó�� �Է��ϼ���."); fm.phone.focus(); return false;
	}
	if(confirm("�Է��� ������ �½��ϱ�?")){
		
	}else{
		return false;
	}
}
</script>
<div align="center" class="wrap">
	<div class="user_entry_wr">
		<div class="entryfrom_box">
			<h2 class="title">ȸ������</h2>
			<form:form action="../entry/entry.html" method="post" name="frm" modelAttribute="user"
					onSubmit="return formCheck(this)">
				<input type="hidden" name="IDCHECK"/>
				<input type="hidden" name="REALID"/>
				<p>
					<form:input path="user_id" maxLength="20" cssClass="id" placeHolder="���̵�"/>
					<span class="btn_box id_check_box">
						<input type="button" value="�ߺ��˻�" onClick="idCheck()"/>
					</span>
				</p>
				<p>
					<form:password path="password" maxLength="20" cssClass="password"  placeHolder="��ȣ"/>
				</p>
				<p>
					<input type="password" name="CONFIRM" placeHolder="��ȣ Ȯ��"/>
				</p>
				<p>
					<form:input path="user_name" maxLength="20" cssClass="name" placeHolder="�̸�"/>
				</p>
				<p>
					<form:input path="phone" maxLength="20" cssClass="phone"  placeHolder="�޴�����ȣ(*-�����Է��ϼ���)"/>
				</p>
				<p>
					<form:input path="email" maxLength="30" cssClass="email"  placeHolder="�̸���"/>
				</p>
				<p>
					<form:input path="birthday" maxLength="8" cssClass="birthday" placeHolder="����(yyyymmdd)"/>
				</p>
				<div class="btn_box">
					<input type="submit" value="Ȯ��"/>
					<input type="reset" value="���"/>
				</div>		
			</form:form>
		</div>
	</div>
</div><!-- wrap -->
</body>
</html>






