<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>	Student Login</title>
<link href = "Login.css"  rel ="stylesheet" type ="text/css">

</head>
<body>

<form action = "Logstudent" method ="post">
		
		<h2>STUDENT LOGIN</h2>
		<h2>WELCOME</h2>
		<h3> FirstName </h3>  <input type = "text" class = " " name="F_name" placeholder= "add your first name" required> 
		<h3>  Password  </h3>  <input type = "password" name="pass" placeholder ="add your password" required> <br><br>
		
	    <input type = "submit" name = "submit" value = "Login"> 
	    
	    <h4><a href = "StudentInsert.jsp"> Register Student </a></h4>
	    			
</form>
</body>	
</html>
