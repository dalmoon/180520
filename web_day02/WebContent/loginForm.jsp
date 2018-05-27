<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
System.out.println(session.getId());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="loginProc.jsp">
<label for="userid"> 아이디 : </label>
<input type="text" name="id" id="userid"><br>
<label for="userpwd"> 암 &nbsp; 호 : </label>
<input type ="password" name="pwd" id="userpwd"><br>
<input type="submit" value="로그인">
</form>
</body>
</html>