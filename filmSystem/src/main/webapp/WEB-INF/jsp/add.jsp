<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/menu_header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title><spring:message code="filmMenu.title"/></title>
</head>
<body class="body">
<form:form modelAttribute="film" action="../film/register.html" method="post"
	enctype="multipart/form-data">
<div align="center" class="body">
<h2><font color="green"><spring:message code="filmMenu.title"/></font></h2>
<table>
	<tr height="40px"><td>개봉일</td>
		<td><form:input path="releaseDate" cssClass="releaseDate" maxlength="20"/></td>
		<td><font color="red"><form:errors path="releaseDate"/></font></td>
	</tr>
	<tr height="40px"><td>장르</td>
		<td><form:input path="genre" cssClass="genre" maxlength="30"/></td>
		<td><font color="red"><form:errors path="genre"/></font></td>
	</tr>
	<tr height="40px"><td>제목</td>
		<td><form:input path="filmTitle" cssClass="filmTitle" maxlength="60"/></td>
		<td><font color="red"><form:errors path="filmTitle"/></font></td>
	</tr>
	<tr height="40px"><td>가격</td>
		<td><form:input path="filmPrice" cssClass="filmPrice" maxlength="10"/>&nbsp;원</td>
		<td><font color="red"><form:errors path="filmPrice"/></font></td>
	</tr>
	<tr height="40px"><td>등급</td>
	<td><form:radiobutton path="filmRating" cssClass="filmRating" value="전체이용가"/>
	<label>전체관람가</label>
	<form:radiobutton path="filmRating" cssClass="filmRating" value="12세이상"/>
	<label>12세 이상</label>
	<form:radiobutton path="filmRating" cssClass="filmRating" value="15세이상"/>
	<label>15세 이상</label>
	<form:radiobutton path="filmRating" cssClass="filmRating" value="청소년관람불가"/>
	<label>청소년관람불가</label></td>
	<td><font color="red"><form:errors path="filmRating"/></font></td>
	</tr>
	<tr height="40px"><td>감독</td>
		<td><form:input path="director" cssClass="director" maxlength="60"/></td>
		<td><font color="red"><form:errors path="director"/></font></td>
	</tr>
	<tr height="40px"><td>내용</td>
		<td><form:textarea path="filmDescription" cssClass="filmDescription"/></td>
		<td><font color="red"><form:errors path="filmDescription"/></font></td>
	</tr>	
	<tr height="40px"><td>이미지 파일</td>
		<td><input type="file" name="picture"/></td><td></td></tr>		
</table>
<br/>
<input type="submit" value="등 록"/><input type="reset" value="취 소"/>
</div>
</form:form>
</body>
</html>