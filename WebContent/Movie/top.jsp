<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1>대구 CGV</h1>
<nav>
	<ul>
		<li><a href="Home.jsp">HOME</a></li>
		<li><a href="onBoard.jsp">상영영화</a></li>
		<li><a href="timetable.jsp">상영시간표</a></li>
		<li><a href="boardForm.jsp">게시판</a></li>
	</ul>
</nav>
<!-- <a href="loginForm.jsp" id="login">로그인</a> -->

<c:choose>
	<c:when test="${Auth != null}">
		<a href="logout.jsp" id="login">로그아웃 <span>[${Auth}]님 반갑습니다.</span></a>
	</c:when>
	<c:otherwise>
		<a href="loginForm.jsp" id="login">로그인</a>
	</c:otherwise>
</c:choose>

<%-- 
<%
	Object result = session.getAttribute("Auth");
	
	if(result != null) {
		out.println("<a href='logout.jsp' id='login'>로그아웃　" + "<span>[" + result + "]님 반갑습니다.</span></a>");
	} else {
		out.println("<a href='loginForm.jsp' id='login'>로그인</a>");
	}
%>
 --%>