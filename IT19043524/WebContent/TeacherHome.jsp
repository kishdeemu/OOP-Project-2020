<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>Teacher Home</title>

<style>
body {
	height: 100%;
	margin: 0;
	padding: 0;
	background-color: #cccac6;
}
</style>

</head>
<body style="background-image: url('images/addhw.jpg'); background-size: 100%;">

<!-- NAVIGATION BAR - OPEN -->
		<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
			<div class="container-fluid">
				<a href="index.jsp" class="navbar-brand">StudentInfo.lk</a>
				<button class="navbar-toggler" data-toggle="collapse" data-target="#tog-btn">
					<span class="navbar-toggler-icon"></span>
				</button>
				
				<div class="collapse navbar-collapse" id="tog-btn">
				<ul class="nav navbar-nav ml-auto">
				<form method = "POST" action="TeacherLogout">
					<input type="submit" value="LOGOUT" class="btn btn-primary">
				</form>		
					</ul>
				</div>
			</div>
		</nav>
<!-- NAVIGATION BAR - CLOSE -->
<br/>
<center><h1>WELCOME</h1></center>
<div id="div" class="container" style="margin-top:50px; margin-bottom: 50px;">

					<br/><br/><br/><br/><br/><br/><br/><br/>
			
				<center>
					<a href="AddHW.jsp"><button type="button" class="btn btn-primary">Add New Homework</button></a>
					
					<br/>
					<br/>
					<br/>
				
					<a href="ViewHW.jsp"><button type="button" class="btn btn-primary">View  All  Homework</button></a>
				</center>
			
		</div>


</body>
</html>