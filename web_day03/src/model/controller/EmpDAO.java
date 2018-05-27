package model.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmpDAO {

	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	public EmpDAO() throws Exception {
		// TODO Auto-generated constructor stub
		Class.forName("oracle.jdbc.driver.OracleDriver");

	}

	public int insertEmp(EmpVO vo) throws Exception {
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "scott", "tiger");
		stmt = con.prepareStatement("insert into emp2 " + "VALUES(?,?,?,sysdate)");
		stmt.setInt(1, vo.getEmpno());
		stmt.setString(2, vo.getEname());
		stmt.setDouble(3, vo.getSal());
		int rowcnt = stmt.executeUpdate();
		return rowcnt;
	}

}
