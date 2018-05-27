<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		response.setContentType("text/html; charset=utf-8");

		int eno = 1234;

		try {
			// 오라클 드라이버를 Load 한다
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 데이타 베이스에 접속을 한다.
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "scott", "tiger");

			// Statement object를 생성한다.
			stmt = con.prepareStatement("SELECT empno, ename FROM EMP2" + " where empno=?" + " order by ename");

			stmt.setInt(1, eno);
			rs = stmt.executeQuery();

			// 결과 출력
			out.println("<HTML><HEAD><TITLE>Phonebook</TITLE></HEAD>");
			out.println("<BODY>");
			out.println("<UL>");
			while (rs.next()) {
				out.println("<li>" + rs.getString("empno") + " " + rs.getString("ename")); // rs.getString(1),
																							// rs.getString(2)등 숫자도 가능
			}
			out.println("</ul>");
			out.println("</body></html>");
		} catch (Exception e) {
			out.println("SQLException caught: " + e.getMessage());
		} finally {
			// 언제나 데이타 베이스 연결을 종료한다.
			try {
				if (con != null)
					con.close();
			} catch (SQLException ignored) {
			}
		}
	%>
</body>
</html>