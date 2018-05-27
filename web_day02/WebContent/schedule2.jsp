<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="auth.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String uid = request.getParameter("id");
	%>
	<div id="login" style="text-align: center;">
		<%=uid%>
		로그인
	</div>
	일정관리
	<a href="logoutProc.jsp">로그아웃</a>
</body>
</html>
