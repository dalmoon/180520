<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<jsp:useBean id="evo" class="model.controller.EmpVO" scope="session">
		</jsp:useBean>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#res {
	background-color: red;
}
</style>
</head>
<body>
	<div id="res">
		<jsp:getProperty property="ename" name="evo" />
		<%=request.getAttribute("result")%>
		<%=request.getParameter("msg")%>
	</div>
</body>
</html>