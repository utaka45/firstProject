<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">
<style>
/* header 0621 김성경 삭제하지 마시오*/
.header_wr {width:90%; height:80px;margin:0 auto;}
.header_wr .user_name {color:#a834eb;}
.header_wr .user_icon {font-size:16px;}
.menu {float:left; padding:0;}
.menu li {display:inline-block;float:left;padding-right:20px;}
.menu li a {display:inline-block;}

.user_menu {float:right;}
.user_menu li {display:inline-block;float:left;padding-left:20px;}
</style>


<div align="center" class="header_wr">
	<ul class="menu">
         <c:choose>
         <c:when test="${sessionScope.ADMIN != null }">
          	<li><a href="../film/upload.html">영화 등록하기</a></li>
			<li><a href="../film/theater.html">영화관 등록 </a></li>            
			<li><a href="../film/put_bulletin.html">공지 등록</a></li>
			<li><a href="../film/index.html">영화</a></li>
         </c:when>
         <c:otherwise>
          	<li><a href="../film/index.html">영화</a></li>
            <li><a href="../write/book_template.html">영화 예매</a></li>
            <li><a href="../read/read.html">공지</a>
         </c:otherwise>
         </c:choose>
   </ul>
	<ul class="user_menu">
		<c:choose>
			<c:when test="${sessionScope.loginUser != null }">
				<li>
					<span class="user_icon">&#x26A1;</span>
					<span class="user_name">${sessionScope.userName}</span>님
				</li>
				<li><a href="../myPage/mypage.html">마이페이지</a></li>
				<li><a href="../read/entryList.html">정보 수정</a></li>
				<li><a href="../logout/logoutResult.html">로그아웃</a></li>
			</c:when >
			<c:when test="${sessionScope.ADMIN != null }">
				<li>
					<span class="user_icon">&#x26A1;</span>
					<span class="user_name">${sessionScope.userName}</span>님
				</li>
				<li><a href="../logout/logoutResult.html">로그아웃</a></li>
			</c:when >
			<c:otherwise>
				<li><a href="../login/login.html">로그인</a></li>
				<li><a href="../entry/userEntry.html">회원가입</a></li>
				<li><a href="../login/passWrite.html">비밀번호 찾기</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
</div>