<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie c = new Cookie("pageURL", request.getRequestURL().toString());
		c.setMaxAge(60 * 2);
		response.addCookie(c);
	%>
	쿠키생성 및 웹브라우저에 전달
</body>
</html>