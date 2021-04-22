<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.osmsoop.models.exams" import="com.osmsoop.service.ExamService" import= "java.util.List" import="java.util.Iterator"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="scroll-behavior:smooth;">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="js/bootstrap.min.js"> </script>
		<title>Login</title>
		<style>
			.sidenav {
			  height: 100%; /* Full-height: remove this if you want "auto" height */
			  width: 160px; /* Set the width of the sidebar */
			  position: fixed; /* Not Fixed Sidebar (not stay in place on scroll) */
			  z-index: 1; /* Stay on top */
			  top: 1; /* Stay at the top */
			  left: 1;
			  background-color: #111; /* Black */
			  overflow-x: hidden; /* Disable horizontal scroll */
			  padding-top: 80px;
			}
			
			.sidenav a {
			  padding: 6px 8px 6px 16px;
			  text-decoration: none;
			  font-size: 20px;
			  color: #818181;
			  display: block;
			}
			
			.sidenav a:hover {
				color: #f1f1f1;
			}
		</style>
		
		<%
					//checking session
					if(session.getAttribute("username")==null) {
						response.sendRedirect("admin-login.jsp");
					}
						
					//DB connections
					String url = "jdbc:mysql://localhost:3306/osims";
					String user = "root";
					String password = "";
					Connection con = null;
					Statement st = null;
					ResultSet rs = null;
					int count = 0;
					
					
				%>
	
	
	
	</head>
	<body style="background-color: #e1e3e2; ">
	<!-- -------------------------------------------------------------------------------------------------------------------------------------- -->
			<!-- NAVIGATION BAR - OPEN -->
			<nav class="navbar navbar-expand-sm navbar-dark bg-dark container-fluid" style="position: fixed; z-index: 2;">
				<div class="container-fluid">
					<a href="index.jsp" class="navbar-brand">StudentInfo.lk</a>
					<button class="navbar-toggler" data-toggle="collapse" data-target="#tog-btn">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="tog-btn">
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item"><a href="#" class="nav-link">Welcome <%
								out.println(session.getAttribute("username"));
							%></a></li>
							<li class="nav-item"><a href="logOut" class="nav-link">logout</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- NAVIGATION BAR - CLOSE -->
	<!-- -------------------------------------------------------------------------------------------------------------------------------------- -->
			<div class="sidenav bg-dark">
				<a href="#students">Students</a>
			  	<a href="#teachers">Teachers</a>
			  	<a href="#library">Digital Library</a>
			  	<a href="#exam">Exams</a>
			</div>
			
			<div class="wrapper">
				<div class="row"></div>
					
<!-- ------------------------------------------------------------------------------------------------------------------------------ -->	
				<div id="exam" style="margin-top: 100px; margin-left: 200px; margin-right: 40px;">
					<h1 class="display-4">Upcoming Exams</h1>
					<h3 style="font-weight: bold;">Primary Section</h3>
					<a href="AddExam.jsp"><button type="button" class="btn btn-primary">Add New Exam</button></a>
					<div class="card container border border-dark">
						<div class="card-body py-4 px-3">
							<table class="table container">
								<thead>
									<tr>
										<th scope="col">#</th>
									    <th scope="col">Class</th>
									    <th scope="col">Exam</th>
									    <th scope="col">Date</th>
									    <th scope="col">Start Time</th>
									    <th scope="col">End Time</th>
									    
									</tr>
								</thead>
								<tbody>
									<%
										try{
											List<exams> examDetails = ExamService.selectExamDetails("Primary Section");
											Iterator itr = examDetails.iterator();
											while(itr.hasNext()) {
											exams exam = (exams)itr.next();
											int id = exam.getid();
									%>
									
									<tr>
										<td><%=exam.getid()%></td>
										<td>Grade <%=exam.getClasssec()%></td>
										<td><%=exam.getExam()%></td>
										<td><%=exam.getDate()%></td>
										<td><%=exam.getStarttime()%></td>
										<td><%=exam.getEndtime()%></td>
										<td><a href="updateExams.jsp?id=<%=id%>" ><button type="button" class="btn btn-sm btn-warning float-right">Update</button></a></td>
										<td><a href="deleteExam?id=<%=id%>"><button type="button" class="btn btn-sm btn-danger">Delete</button></a></td>
									</tr>
									<%
											} 
										}catch(Exception e){
											e.printStackTrace();
										}
									%>
									
								</tbody>
								
						
							</table>
						</div>
					</div>
					
					
				</div>
				<div style="margin-top: 100px; margin-left: 200px; margin-right: 40px;">
					<h3 style="font-weight: bold;">Upper-Primary Section</h3>
					<!-- <a href="AddExam.jsp"><button type="button" class="btn btn-primary">Add New Exam</button></a> -->
					<div class="card container border border-dark">
						<div class="card-body py-4 px-3">
							<table class="table container">
								<thead>
									<tr>
										<th scope="col">#</th>
									    <th scope="col">Class</th>
									    <th scope="col">Exam</th>
									    <th scope="col">Date</th>
									    <th scope="col">Start Time</th>
									    <th scope="col">End Time</th>
									    
									</tr>
								</thead>
								<tbody>
										
									<%
																			try{
																										List<exams> examDetails = ExamService.selectExamDetails("Upper Primary Section");
																										Iterator itr = examDetails.iterator();
																										
																										while(itr.hasNext()) {
																											exams exam = (exams)itr.next();
																											int id = exam.getid();
																		%>
									<tr>
										<td><%=exam.getid()%></td>
										<td>Grade <%=exam.getClasssec()%></td>
										<td><%=exam.getExam()%></td>
										<td><%=exam.getDate()%></td>
										<td><%=exam.getStarttime()%></td>
										<td><%=exam.getEndtime()%></td>
										<td><a href="updateExams.jsp?id=<%=id%>" ><button type="button" class="btn btn-sm btn-warning float-right">Update</button></a></td>
										<td><a href="deleteExam?id=<%=id%>"><button type="button" class="btn btn-sm btn-danger">Delete</button></a></td>
									</tr>
									<%
										} 
																}catch(Exception e){
																	e.printStackTrace();
																}
									%>
									
								</tbody>
								
						
							</table>
						</div>
					</div>
					
					
				</div>
				<div style="margin-top: 100px; margin-left: 200px; margin-right: 40px;">
					<h3 style="font-weight: bold;">Senior Section</h3>
					<!-- <a href="AddExam.jsp"><button type="button" class="btn btn-primary">Add New Exam</button></a> -->
					<div class="card container border border-dark">
						<div class="card-body py-4 px-3">
							<table class="table container">
								<thead>
									<tr>
										<th scope="col">#</th>
									    <th scope="col">Class</th>
									    <th scope="col">Exam</th>
									    <th scope="col">Date</th>
									    <th scope="col">Start Time</th>
									    <th scope="col">End Time</th>
									    
									</tr>
								</thead>
								<tbody>
									<%
										try{
																	List<exams> examDetails = ExamService.selectExamDetails("Senior Section");
																	Iterator itr = examDetails.iterator();
																	
																	while(itr.hasNext()) {
																		exams exam = (exams)itr.next();
																		int id = exam.getid();
									%>
									<tr>
										<td><%=exam.getid() %></td>
										<td>Grade <%=exam.getClasssec() %></td>
										<td><%=exam.getExam() %></td>
										<td><%=exam.getDate() %></td>
										<td><%=exam.getStarttime() %></td>
										<td><%=exam.getEndtime() %></td>
										<td><a href="updateExams.jsp?id=<%=id%>" ><button type="button" class="btn btn-sm btn-warning float-right">Update</button></a></td>
										<td><a href="deleteExam?id=<%=id%>"><button type="button" class="btn btn-sm btn-danger">Delete</button></a></td>
									</tr>
									<%
											} 
										}catch(Exception e){
											e.printStackTrace();
										}
									
									
									
									%>
								</tbody>
								
						
							</table>
						</div>
					</div>
					
					
				</div>
			
		</div>
		
			
	
	
		
	</body>
</html>