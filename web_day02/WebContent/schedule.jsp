<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String login = (String) session.getAttribute("loginStatus");

	//인증
	if (login != null && login.equals("auth")) {
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>일정관리
</body>
</html>
<%
	} else {//비인증
		response.sendRedirect("loginForm.jsp");
	}
%>
