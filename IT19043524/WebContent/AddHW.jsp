<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>Add Home Work</title>

</head>

<body style="background-image: url('images/addhw2.jpg'); background-size: 100%;">
<!-- NAVIGATION BAR - OPEN -->
		<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
			<div class="container-fluid">
				<a href="index.jsp" class="navbar-brand">StudentInfo.lk</a>
				<button class="navbar-toggler" data-toggle="collapse" data-target="#tog-btn">
					<span class="navbar-toggler-icon"></span>
				</button>
				
				<div class="collapse navbar-collapse" id="tog-btn">
				<ul class="nav navbar-nav ml-auto">
				<a href="TeacherHome.jsp"><button type="button" class="btn btn-primary">BACK</button></a>
				&nbsp;&nbsp;&nbsp;
				<form method = "POST" action="TeacherLogout">
					<input type="submit" value="LOGOUT" class="btn btn-primary">
				</form>		
					</ul>
				</div>
			</div>
		</nav>
<!-- NAVIGATION BAR - CLOSE -->
<br/>
<center><h1><font color="White">ADD HOMEWORK</font></h1></center>
<br/><br/><br/><br/><br/><br/><br/>

<form method="POST" action="AddHomework">
    

    <table align="center">
    <tr>
    <td>
    <font color="white">Homework ID</font> &nbsp; 
    </td>
    <td>
    <input type="text" name="hwid"  placeholder="ID" required>
    </td>
    </tr>
    
    <tr><td></td></tr>
    <tr><td></td></tr>
    	<tr>
    	<td>
    <font color="white">Grade</font>
    </td>
    <td> 
    <input type="text" name="grade" placeholder="Enter Grade" required>
	</td>
	</tr>
	
	<tr><td></td></tr>
	<tr><td></td></tr>
	<tr>	
	<td>
    <font color="white">Subject</font>
    </td>
    <td>
    <input type="text" name="subject" placeholder="Enter Subject" required>
	</td>
	</tr>

	<tr><td></td></tr>
	<tr><td></td></tr>
	<tr>
	<td>
	<font color="white">Description</font> 
    </td>
    <td>
    <input type="text" name="description" placeholder="Description" required>
	</td>
	</tr>
	
	<tr><td></td></tr>
	<tr><td></td></tr>
	<tr>
	<td>
    <font color="white">DueDate</font>
    </td>
    <td> 
    <input type="text" name="dudate" placeholder="mm/dd/yyyy" required>
    </td>
    </tr>
     
	<tr><td></td></tr>
	<tr><td></td></tr>
</table>
<center>
<br/>
  		<input type="submit" value="ADD" class="btn btn-success">
</center>
</form>


</body>
</html>