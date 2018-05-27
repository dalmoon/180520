<%@page import="model.controller.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	int empno = Integer.parseInt(request.getParameter("empno"));
	String ename = request.getParameter("ename");
	double sal = Double.parseDouble(request.getParameter("sal"));
%>

<!-- EmpVO 인스턴스가 해당 scope에 존재하면 evo리턴
비존재 EmpVO 인스턴스 생성  evo리턴-->
<jsp:useBean id="evo" class="model.controller.EmpVO" scope="session">
</jsp:useBean>
<jsp:setProperty property="*" name="evo" />
<%
	EmpDAO edao = new EmpDAO();
	int result = edao.insertEmp(evo);
	System.out.println(result);
	request.setAttribute("result", result);
	//pageContext.forward("empRegResult.jsp");
	request.setCharacterEncoding("utf-8");
%>

<jsp:forward page="empRegResult.jsp">
	<jsp:param value="명이(가) 등록되었습니다." name="msg" />
</jsp:forward>