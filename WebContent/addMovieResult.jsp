<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="movie" class="com.khrd.dto.MovieInfo"></jsp:useBean>
<jsp:setProperty property="*" name="movie"/>
<jsp:useBean id="movieMgr" class="com.khrd.dto.MovieManager" scope="application"></jsp:useBean>
<%
	movieMgr.addMovie(movie);
	response.sendRedirect("onBoard.jsp");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>