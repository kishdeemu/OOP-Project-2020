<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student register form </title>
<link href = "Insert.css"  rel ="stylesheet" type ="text/css">
</head>
<body>


<h1><b>Register New Student</b></h1>
<form action = "Insertstudent"  method = "post">
<table>

<tr>
   <td> First Name </td>
   <td> <input type = "text" name ="fname" placeholder ="Enter First Name"></td>
</tr>
<tr>
	<td> Last Name </td>
	<td> <input type = "text" name = "lname" placeholder ="Enter Last Name"></td>
</tr>
<tr>
	<td> Email </td> 
	<td> <input type = "email" name = "email" placeholder ="email@address.com"></td>
</tr>
<tr>
	<td> Contact Number </td>
	<td> <input type = "text" name = "phone" placeholder ="Enter Contact Number"></td>
</tr>
<tr>
    <td> Age </td>
    <td> <input type ="text" name ="age" placeholder ="Enter age"></td>
</tr>
<tr>
	<td> Address </td>
	<td> <input type = "text" name="address" placeholder ="Enter Address"></td>
</tr>
<tr>
   <td>	Password </td> 
   <td> <input type = "password"  name = "pwd" placeholder ="Enter password"></td>
</tr>
   	
</table>
	
	<br> <input type = "Submit" name = "Submit" value ="Create Account ">
	
	

</form>
</body>
</html>

