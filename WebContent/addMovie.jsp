<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	}
	section form{		
		display:inline;	
	}
	section fieldset{	
		width:600px;
		margin:0 auto;
	}
	section textarea {
		width:400px;
		height:300px;
	}
</style>
</head>
<body>
	<div id="wrapper">
		<header>
			<jsp:include page="Movie/top.jsp"></jsp:include>
		</header>
		<section>
			<form action="addMovieResult.jsp" method="get">
				<fieldset>
					<legend>영화 정보</legend>
					<p>
						<label>제목 : </label>
						<input type="text" name="title" placeholder="영화 이름">
					</p>
					<p>
						<label>상세 설명 : </label><br>
						<textarea placeholder="영화 상세 설명" name="detail"></textarea>
					</p>
					<p>
						<label>파일 : </label>
						<input type="file" name="file">
					</p>
					<p>
						<label>상영 시간 : </label>
						<input type="text" placeholder="시간" name="time">
					</p>
					<p>
						<input type="submit" value="전송">
					</p>
				</fieldset>
			</form>
		</section>
		<footer>
			<jsp:include page="Movie/bottom.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>