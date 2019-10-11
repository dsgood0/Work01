<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardMgr" class="com.khrd.dto.BoardManager" scope="application"></jsp:useBean>
<%
	boardMgr.removeAll(); // arrayList 안의 내용 모두 삭제
	//arrayList를 가져와서 삭제
	response.sendRedirect("boardList.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>