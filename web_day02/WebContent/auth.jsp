<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String login = (String) session.getAttribute("loginStatus");

	//인증
	if (!(login != null && login.equals("auth"))) {
		response.sendRedirect("loginForm.jsp");
	}
%>