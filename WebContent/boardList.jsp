<%@page import="com.khrd.dto.BoardManager"%>
<%@page import="com.khrd.dto.BoardInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="boardMgr" class="com.khrd.dto.BoardManager" scope="application"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function() {
		// 추가 버튼을 눌렀을 때
		$("#btnAdd").click(function() {
			location.href = "boardForm.jsp";
		});
		
		// 모두 삭제 버튼을 눌렀을 때
		$("#btnDel").click(function() {
			location.href = "boardDelete.jsp";
		});
	});
</script>
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
		margin:0 auto;
		width:900px;
	}
	footer{
		margin-top:30px;
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
	section h1 {
		text-align: center;
	}
	section ul {
		padding:0px;
		border-top:2px solid black;
	}
	section li {
		border-bottom:1px solid black;
		position:relative;
		list-style:none;
		height:50px;
		line-height:40px;
	}
	section .title {
		position:absolute;
		top:5px;
		left:5px;
	}
	section .writer{
		position:absolute;
		right:200px;
		top:5px;
	}
	section .date {
		position: absolute;
		right:0px;
		top:5px;
	}
	section a{
		text-decoration: none;
		color:black;
	}
	section div{
		float:right;
		margin-bottom:50px;
	}
</style>
</head>
<body>
	<div id="wrapper">
		<header>
			<jsp:include page="Movie/top.jsp"></jsp:include>
		</header>
		<section>
			<ul>
				<c:forEach var="board" items="${boardMgr.list}" varStatus="status">
					<li>
						<span class="title"><a href="boardDetail.jsp?index=${status.index}">${board.title}</a></span>
						<span class="writer">작성자 : ${board.name}</span>
						<span class="date">${board.registerDate}</span>
					</li>
				</c:forEach>
				
				<%-- <%
					// boardMgr의 사이즈만큼 반복함. (들어있는 리스트의 갯수만큼 반복)
					for(int i=0; i<boardMgr.getSize(); i++) {
						// boardMgr에 있는 i번째 Board를 가져와서 board에 입력 
						BoardInfo board = boardMgr.getBoard(i);
						out.print("<li>");
						// index 값을 i에서 가져와서 클릭 시 이동할 href에 미리 넣어둠으로써 몇 번째 글에 접근할 것인지를 미리 명시함
						out.print("<span class='title'><a href='boardDetail.jsp?index=" + i + "'>" + board.getTitle() + "</a></span>");
						out.print("<span class='writer'>작성자 : "+ board.getName() + "</span>");
						out.print("<span class='date'>"+ board.getRegisterDate() + "</span>");
						out.print("</li>");
					}
				%>	 --%>
			</ul>
			<div>
				<button id="btnAdd">글쓰기</button>
				<button id="btnDel">모두 삭제</button>
				<!-- <a href="boardForm.jsp">글쓰기</a>
				<a href="#">모두 삭제</a> -->
			</div>
		</section>
		<footer>
			<jsp:include page="Movie/bottom.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>