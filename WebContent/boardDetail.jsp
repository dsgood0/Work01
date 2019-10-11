<%@page import="com.khrd.dto.BoardInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="boardMgr" class="com.khrd.dto.BoardManager" scope="application"></jsp:useBean>
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
		width:700px;
		margin:0 auto;
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
	#content {
		width:200px;
		height:150px;
	}
</style>
</head>
<body>
	<%
		// index 값을 sIdx에 가져옴
		String sIdx = request.getParameter("index");
		// sIdx 값이 String이므로 int값으로 변경함
		int index = Integer.parseInt(sIdx);
		BoardInfo board = boardMgr.getBoard(index);
	%>
	<c:set var="board" value="<%=board %>"/>
	<div id="wrapper">
		<header>
			<jsp:include page="Movie/top.jsp"></jsp:include>
		</header>
		<section>
			<fieldset>
				<legend>게시판 글쓰기</legend>
				<label>이 름 : </label>${board.name}<br>
				<label>제 목 : </label>${board.title}<br>
				<label>내 용 : </label>${board.content}<br>
			</fieldset>	
			<button id="update">수정</button>
			<button id="delete">삭제</button>
		</section>
		<footer>
			<jsp:include page="Movie/bottom.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>