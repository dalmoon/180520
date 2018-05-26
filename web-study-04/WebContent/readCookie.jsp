<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cn : cookies) {
				String nm = cn.getName();
				String val = URLDecoder.decode(cn.getValue(), "utf-8");
				System.out.print(nm + "," + val);
			}
		}
	%>
</body>
</html>