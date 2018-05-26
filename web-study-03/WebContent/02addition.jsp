<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!int num1 = 20;
	int num2 = 10;%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int add = 0;
		if (request.getMethod().equals("GET")) {
			add = num1 + num2;
		} else {
			add = num1 - num2;
		}
		//out.print(num1 + " + " + num2 + " =" + add);
	%>
	<%=num1 + " + " + num2 + " =" + add%>
</body>
</html>