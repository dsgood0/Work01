<%@page import="com.khrd.dto.MovieInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<jsp:useBean id="movieMgr" class="com.khrd.dto.MovieManager" scope="application"></jsp:useBean>
<%
	// index 값을 sIdx에 가져옴
	String sIdx = request.getParameter("index");
	// sIdx 값이 String이므로 int값으로 변경함
	int index = Integer.parseInt(sIdx);
	MovieInfo movie = movieMgr.getMovie(index);
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#wrapper {
		width:1024px;
		margin:0 auto;
	}
	header {
		text-align:center;
	}
	header h1{
		color:skyblue;
		font-size:48px;
	}
	header nav {
		background: skyblue;
	    margin-bottom: 10px;
	}
	header nav ul {
		height:50px;
		padding:0px;
		background-color:skyblue;
		margin:0 auto;
		margin-top:10px;
		display:inline-block;
	}
	header nav ul li {
		float:left;
		list-style:none;
		width:160px;
		color:white;
		font-size:25px;
	}
	header nav li a {
		color:white;
		text-decoration: none;
		font-size:25px;
		line-height:25px;
		margin-right:10px;
	}
	footer{
		margin-top:10px;
		clear:both;
		background:skyblue;
		height:70px;
		width:100%;
	}
	footer p{
		padding-top:10px;
		text-align:center;
	}
	footer span{
		font-size:12px;
		display:block;
		text-align: center;
	}
	section{
		width:100%;
		height:700px;
		margin:0 auto;
	}
	section .moviebox{		
		display:block;
		float:left;	
	}
</style>
</head>
<body>
	<c:set var="movie" value="<%=movie %>"/>
	<div id="wrapper">
		<header>
			<jsp:include page="Movie/top.jsp"></jsp:include>
		</header>
		<section>
			<div id="moviebox">
				<img src="images/${movie.file}">
				<h3>${movie.title}</h3>
				<b>&lt;줄거리&gt;</b>
				<p>${movie.detail}</p>
			</div>
		</section>
		<footer>
			<jsp:include page="Movie/bottom.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>