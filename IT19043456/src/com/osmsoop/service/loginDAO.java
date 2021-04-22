package com.osmsoop.service;

import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/*import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;*/

public class loginDAO {

	String url = "jdbc:mysql://localhost:3306/osims";
	String user = "root";
	String password = "";
	String query = "SELECT uname, pwd FROM admin_register WHERE uname = ? AND pwd = md5(?)";

	public boolean check(String uname, String pword) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			st.setString(2, pword);
			ResultSet rs = st.executeQuery();

			if (rs.next()) {

				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
