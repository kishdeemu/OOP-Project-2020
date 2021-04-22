package com.osmsoop.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegAdminServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Uname = request.getParameter("Uname");
		String Email = request.getParameter("Email");
		String Pwd = request.getParameter("Pwd");
		String Confpwd = request.getParameter("Confpwd");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/osims";
			String user = "root";
			String password = "";

			Connection con = DriverManager.getConnection(url, user, password);
			String query = "INSERT INTO admin_register(uname, email, pwd, confpwd) VALUES (?,?,md5(?),md5(?))";
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, Uname);
			st.setString(2, Email);
			st.setString(3, Pwd);
			st.setString(4, Confpwd);

			st.executeUpdate();

			response.sendRedirect("admin-login.jsp");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
