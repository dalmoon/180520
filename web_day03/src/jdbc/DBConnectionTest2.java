package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DBConnectionTest
 */
@WebServlet("/DBConnectionTest2")
public class DBConnectionTest2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DBConnectionTest2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
