<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
session.invalidate();
System.out.println(session.getId());
response.sendRedirect("loginForm.jsp");
%>
</body>
</html>