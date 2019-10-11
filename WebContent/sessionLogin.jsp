<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
	%>
	
	<c:set var="id" value="<%=id %>"/>
	
	<c:choose>
		<c:when test="${param.id == param.password }">
			<%
				session.setAttribute("Auth", id);
			%>
			<c:redirect url="Home.jsp"></c:redirect>
		</c:when>
		<c:otherwise>
			<c:redirect url="Home.jsp"></c:redirect>
		</c:otherwise>
	</c:choose>

	<%-- <%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		if(id.equals(password)) {
			session.setAttribute("Auth", id);
			response.sendRedirect("Home.jsp");
		} else {
			response.sendRedirect("Home.jsp");
		}
	%> --%>
</body>
</html>