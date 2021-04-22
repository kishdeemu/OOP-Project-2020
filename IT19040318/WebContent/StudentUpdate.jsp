 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student Details</title>
<link href = "Update.css"  rel ="stylesheet" type ="text/css">
</head>
<body>


	<!--java code for catch update student variables had declared in StudentAcount.jsp -->
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

	<h1><b>Update Student</b></h1>
	
	<form action ="Updatestudent" method ="post">
	<table>
	<tr>
		<td>Student ID</td>
		<td><input type ="text" name ="S_id" value ="<%= stdid %>" readonly></td> 
		<!-- this is read only because it is primary key and auto incremented -->
	</tr>
	<tr>
		<td>Student FirstName</td>
		<td><input type ="text" name ="S_F_Name" value ="<%= firstname %>"></td>
	</tr>
	<tr>
		<td>Student LastName</td>
		<td><input type ="text" name ="S_L_Name" value ="<%= lastname %>" ></td> 
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
		<td><input type = "password"  name = "S_Pwd" value ="<%= password %>" > </td>
	</tr>
	<tr>
		<td>Address </td> 
		<td><input type = "text" name="S_Address" value ="<%= address %>" > </td>
	</tr>
	<tr>
		<td>Age </td> 
		<td><input type ="text" name ="S_Age" value ="<%= age %>" > </td>
	</tr>
	</table>
	
		<br> <input type = "Submit" name = "Submit" value ="Update">
		
	</form>

</body>
</html>