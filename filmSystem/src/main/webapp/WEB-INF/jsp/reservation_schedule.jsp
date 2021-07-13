<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
    <title>날짜</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">
  </head>
  <body class="body">
  <div class="reserv_body temp_sch">
  	<h2 class="title">날짜 선택</h2>
  	<form action="../write/date.html">
  		<p>
  			<input type="date" id="start" name="date" value="2021-07-12">
		    <input class="btn" type="submit" value="선택 >">
  		</p>
	</form>
  </div>
  </body>
</html>