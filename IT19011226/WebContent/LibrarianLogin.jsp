<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Librarian Login</title>
</head>

<body>


<center>
<h1>Librarian Login</h1>
</center>

<br>

<!--user login begins-->


<center>

<form method='POST' action='librarianLogin'>

<p>User Name</p>
<input type = "text" name="username" placeholder="Enter Username" required>

<P>Password</p>
<input type = "password" name="password" placeholder="Enter Password" required>

<br><br>

<input type="submit" name="" value="Login">
</form>

</center>

<!--user login ends-->

</body>
</html>