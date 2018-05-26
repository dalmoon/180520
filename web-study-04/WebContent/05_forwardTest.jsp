<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int age = Integer.parseInt(request.getParameter("age"));
	if (age <= 19) {
%>
<script type="text/javascript">
	alert("19세 미만이므로 입장 불가능")
	history.go(-1)
	//location.href="05_forwardResult.jsp";
</script>
<%
		//out.flush();
		//단순이동
		//response.sendRedirect("05_forwardForm.jsp");
	} else {
		request.setAttribute("name", "성윤정");
		request.setAttribute("id", "sung");
		request.setAttribute("enterTime", new Date());
		//함께이동
		//RequestDispatcher dispatcher = request.getRequestDispatcher("05_forwardResult.jsp");
		//dispatcher.forward(request, response);

		pageContext.forward("05_forwardResult.jsp");
	}
%>