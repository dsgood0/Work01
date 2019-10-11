<%@page import="com.khrd.dto.MovieInfo"%>
<%@page import="com.khrd.dto.MovieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="movieMgr" class="com.khrd.dto.MovieManager" scope="application"></jsp:useBean>
<!DOCTYPE html>
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
		position:relative;
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
	header a#login{
		color:black;
		text-decoration: none;
		position: absolute;
		top:70px;
		right:10px;
	}
	section{
		width:100%;
		height:700px;
	}
	section h3{
		text-align: center;
	}
	section table{
		border-collapse: collapse;
		margin:0 auto;
	}
	section table td, section table th{
		border: 1px solid black;
		padding:5px;
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
</style>
</head>
<body>
	<div id="wrapper">
		<header>
			<jsp:include page="Movie/top.jsp"></jsp:include>
		</header>
		<section>
			<h3>&lt;상영 시간표&gt;</h3>
			<table>
				<c:forEach var="movie" items="${movieMgr.list}">
					<tr>
						<th>${movie.title}</th>
						<td>${movie.time}</td>
					</tr>
				</c:forEach>
				<%-- <%
					for(int i=0; i<movieMgr.getSize(); i++) {
						MovieInfo movie = movieMgr.getMovie(i);
						out.print("<tr>");
						out.print("<th>"+ movie.getTitle() +"</th>");
						out.print("<td>"+ movie.getTime() +"</td>");
						out.print("<tr>");
					}
				%> --%>
			</table>
		</section>
		<footer>
			<jsp:include page="Movie/bottom.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>