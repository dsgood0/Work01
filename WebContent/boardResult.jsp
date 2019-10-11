<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- BoardInfo 클래스의 객체를 생성함 / 이름은 board -->
<jsp:useBean id="board" class="com.khrd.dto.BoardInfo"></jsp:useBean>
<!-- board 객체의 프로퍼티의 값을 변경 / 같은 이름을 가진 것들로 -->
<jsp:setProperty property="*" name="board"/>
<!-- BoardManager 클래스의 객체를 생성함 / 이름은 boardMgr -->
<jsp:useBean id="boardMgr" class="com.khrd.dto.BoardManager" scope="application"></jsp:useBean>
<%
	// 작성한 시간을 저장하고자 현재 시간을 board 객체의 registerDate 값에 입력함
	board.setRegisterDate(new Date());
	// boardMgr의 board를 추가함
	boardMgr.addBoard(board);
	// boardList.jsp로 페이지를 이동함
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