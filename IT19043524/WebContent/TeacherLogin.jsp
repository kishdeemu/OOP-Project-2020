<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>Teacher Login</title>

</head>
<body style="background-image: url('images/teclog.jpg'); background-size: 100%;">

<!-- -------------------------------------------------------------------------------------------------------------------------------------- -->
		<!-- NAVIGATION BAR - OPEN -->
		<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
			<div class="container-fluid">
				<a href="index.jsp" class="navbar-brand">StudentInfo.lk</a>
				<button class="navbar-toggler" data-toggle="collapse" data-target="#tog-btn">
					<span class="navbar-toggler-icon"></span>
				</button>
				
				<div class="collapse navbar-collapse" id="tog-btn">
				<ul class="nav navbar-nav ml-auto">
				<a href="index.jsp"><button type="button" class="btn btn-primary">BACK</button></a>		
					</ul>
				</div>
			</div>
		</nav>
		<!-- NAVIGATION BAR - CLOSE -->
<!-- -------------------------------------------------------------------------------------------------------------------------------------- -->
<br/>
<center>
<h1><font color="White">TEACHER LOGIN</font></h1>
<br/><br/><br/><br/><br/><br/><br/><br/>
</center>

<form method='POST' action='TeacherLogin' align="center">

<font color="White">User Name</font>
<input type = "text" name="username" placeholder="Enter Username" required>
<br/><br/>
<font color="White">Password &nbsp;</font>
<input type = "password" name="password" placeholder="Enter Password" required>

<br><br>

<input type="submit"  value="Login" class="btn btn-primary">
</form>


<!--footer begin------------------------------------------------------------------------------------------------------------------------------->

<!--footer End---------------------------------------------------------------------------------------------------------------------------------->
</body>
</html>