<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Student details </title>
<link href = "Delete.css"  rel ="stylesheet" type ="text/css">
</head>
<body>

	<!--java code for catch update student variables had declared in StudentAccount.jsp -->
	<%
		String stdid =request.getParameter("stdid");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String age = request.getParameter("age");
	%>

	<h1><b> Student Account Delete </b></h1>
	

	<form action ="Deletestudent" method ="post">
	<table>
	<tr>
		<td>Student ID</td>
		<td><input type ="text" name ="S_id" value ="<%= stdid %>" readonly></td> 
		<!-- this is read only because it is primary key and auto incremented -->
	</tr>
	<tr>
		<td>Student FirstName</td>
		<td><input type ="text" name ="S_F_Name" value ="<%= firstname %>"readonly></td>
	</tr>
	<tr>
		<td>Student LastName</td>
		<td><input type ="text" name ="S_L_Name" value ="<%= lastname %>" readonly></td> 
	</tr>
	<tr>
		<td>Student Email </td> 
		<td><input type ="email" name ="S_Email" value="<%= email %>" readonly> </td>
	</tr>
	<tr> 
		<td>Contact Number </td>
		<td><input type ="text" name="S_Contact" value ="<%= phone %>" readonly> </td>
	</tr>
	<tr>
		<td>Password </td> 
		<td><input type = "password"  name = "S_Pwd" value ="<%= password %>"readonly > </td>
	</tr>
	<tr>
		<td>Address </td> 
		<td><input type = "text" name="S_Address" value ="<%= address %>" readonly> </td>
	</tr>
	<tr>
		<td>Age </td> 
		<td><input type ="text" name ="S_Age" value ="<%= age %>" readonly> </td>
	</tr>
	</table>
	
		<br> <input type = "Submit" name = "Submit" value ="Delete Account">
		
	</form>
	
</body>
</html>