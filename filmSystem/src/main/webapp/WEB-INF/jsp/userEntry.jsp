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
		alert("아이디를 입력하세요.");
		document.frm.user_id.focus();
		return;
	}
	var url="../idcheck/idcheck.html?USER_ID="+document.frm.user_id.value;
	window.open(url,"_blank_","width=450,height=200");
}
function formCheck(fm){
	if(fm.user_id.value == ''){
		alert("아이디를 입력하세요."); fm.user_id.focus(); return false;
	}
	if(fm.IDCHECK.value == ''){
		alert("아이디 중복 검사를 해주세요."); return false;
	}
	if(fm.password.value == ''){
		alert("암호를 입력하세요."); fm.password.focus(); return false;
	}
	if(fm.CONFIRM.value == ''){
		alert("암호 확인을 위해 다시 입력해 주세요"); 
		fm.CONFIRM.focus(); return false;
	}
	if(fm.password.value != fm.CONFIRM.value){
		alert("암호가 일치하지 않습니다."); 
		fm.password.focus(); return false;
	}
	if(fm.user_name.value == ''){
		alert("이름을 입력하세요."); fm.user_name.focus(); return false;
	}
	if(fm.phone.value == ''){
		alert("연락처를 입력하세요."); fm.phone.focus(); return false;
	}
	if(confirm("입력한 내용이 맞습니까?")){
		
	}else{
		return false;
	}
}
</script>
<div align="center" class="wrap">
	<div class="user_entry_wr">
		<div class="entryfrom_box">
			<h2 class="title">회원가입</h2>
			<form:form action="../entry/entry.html" method="post" name="frm" modelAttribute="user"
					onSubmit="return formCheck(this)">
				<input type="hidden" name="IDCHECK"/>
				<input type="hidden" name="REALID"/>
				<p>
					<form:input path="user_id" maxLength="20" cssClass="id" placeHolder="아이디"/>
					<span class="btn_box id_check_box">
						<input type="button" value="중복검사" onClick="idCheck()"/>
					</span>
				</p>
				<p>
					<form:password path="password" maxLength="20" cssClass="password"  placeHolder="암호"/>
				</p>
				<p>
					<input type="password" name="CONFIRM" placeHolder="암호 확인"/>
				</p>
				<p>
					<form:input path="user_name" maxLength="20" cssClass="name" placeHolder="이름"/>
				</p>
				<p>
					<form:input path="phone" maxLength="20" cssClass="phone"  placeHolder="휴대폰번호(*-빼고입력하세요)"/>
				</p>
				<p>
					<form:input path="email" maxLength="30" cssClass="email"  placeHolder="이메일"/>
				</p>
				<p>
					<form:input path="birthday" maxLength="8" cssClass="birthday" placeHolder="생일(yyyymmdd)"/>
				</p>
				<div class="btn_box">
					<input type="submit" value="확인"/>
					<input type="reset" value="취소"/>
				</div>		
			</form:form>
		</div>
	</div>
</div><!-- wrap -->
</body>
</html>






