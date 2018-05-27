<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#res {
	background-color: red;
	font-size: 2em;
}
</style>
</head>
<body>
	<div id="res">
		${evo.ename} 사원
		${result}
		${param.msg}
	</div>
</body>
</html>