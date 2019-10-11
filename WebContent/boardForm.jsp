<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#content {
		width:200px;
		height:150px;
	}
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
	section fieldset{
		width:300px;
		margin:0 auto;
	}
	section label{
		margin-right:10px;
	}
	section input{
		margin:5px;
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
			<form action="boardResult.jsp" method="get">
				<fieldset>
					<legend>게시판 글쓰기</legend>
					<label>이 름</label><input type="text" name="name"><br>
					<label>제 목</label><input type="text" name="title"><br>
					<label>내 용</label><input type="text" name="content" id="content"><br>
					<br>
					<input type="submit" value="작성"><input type="reset" value="다시 작성">
				</fieldset>
			</form>
		</section>
		<footer>
			<jsp:include page="Movie/bottom.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>