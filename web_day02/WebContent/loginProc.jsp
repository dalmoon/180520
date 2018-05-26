<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String uid = request.getParameter("id");
	String upw = request.getParameter("pwd");

	if (uid.equals(upw)) {
		session.setAttribute("loginStatus", "auth");
		pageContext.forward("schedule2.jsp");
	} else {
		response.sendRedirect("loginForm.jsp");
	}
%>