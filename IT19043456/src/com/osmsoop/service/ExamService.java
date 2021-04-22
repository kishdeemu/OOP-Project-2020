package com.osmsoop.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.osmsoop.models.exams;

public class ExamService {

	public static boolean insertExamDetails(String ClassSec, String Section, String Exam, String Date, String StartTime,
			String EndTime) {

		boolean isSuccess = false;

		// DB Connections
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/osims";
			String user = "root";
			String password = "";

			Connection con = DriverManager.getConnection(url, user, password);
			String query = "INSERT INTO exams(class, section, examtitle, date, starttime, endtime) VALUES ('" + ClassSec
					+ "', '" + Section + "', '" + Exam + "', '" + Date + "', '" + StartTime + "', '" + EndTime + "')";
			PreparedStatement st = con.prepareStatement(query);
			int rs = st.executeUpdate();

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	public static List<exams> selectExamDetails(String section) {

		ArrayList<exams> examDetails = new ArrayList<>();

		// DB Connections
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/osims";
			String user = "root";
			String password = "";

			Connection con = DriverManager.getConnection(url, user, password);
			String query = "SELECT * FROM exams WHERE section='" + section + "'";
			Statement st = con.createStatement();

			ResultSet rs = st.executeQuery(query);

			while (rs.next()) {
				int id = rs.getInt(1);
				String ClassSec = rs.getString(2);
				String Section = rs.getString(3);
				String Exam = rs.getString(4);
				String Date = rs.getString(5);
				String StartTime = rs.getString(6);
				String EndTime = rs.getString(7);

				exams ex = new exams(id, ClassSec, Section, Exam, Date, StartTime, EndTime);
				examDetails.add(ex);
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		return examDetails;
	}

	public static boolean updateExamDetails(int Id, String ClassSec, String Section, String Exam, String Date,
			String StartTime, String EndTime) {
		boolean isSuccess = false;
		// DB Connections
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/osims";
			String user = "root";
			String password = "";

			Connection con = DriverManager.getConnection(url, user, password);
			String query = "UPDATE exams SET class = '" + ClassSec + "', section = '" + Section + "' , examtitle = '"
					+ Exam + "', date = '" + Date + "', starttime ='" + StartTime + "' , endtime = '" + EndTime
					+ "' WHERE id ='" + Id + "'";
			PreparedStatement st = con.prepareStatement(query);
			int rs = st.executeUpdate();

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	public static boolean deleteExamDetails(int Id) {
		boolean isSuccess = false;
		// DB Connections
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/osims";
			String user = "root";
			String password = "";

			Connection con = DriverManager.getConnection(url, user, password);
			String query = "DELETE FROM exams WHERE id ='" + Id + "'";
			PreparedStatement st = con.prepareStatement(query);
			int rs = st.executeUpdate();

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

}
