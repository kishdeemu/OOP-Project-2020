<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="com.teacher.model.Homework" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>Update Home Work</title>

<style>
body {
	height: 100%;
	margin: 0;
	padding: 0;
	background-color: #cccac6;
}
</style>

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
				<a href="ViewHW.jsp"><button type="button" class="btn btn-primary">BACK</button></a>
				&nbsp;&nbsp;&nbsp;
				<form method = "POST" action="TeacherLogout">
					<input type="submit" value="LOGOUT" class="btn btn-primary">
				</form>		
					</ul>
				</div>
			</div>
		</nav>
<!-- NAVIGATION BAR - CLOSE -->


<%
ArrayList<Homework> hwlist = new ArrayList();
hwlist = (ArrayList)request.getAttribute("Homeworkdata");

for(Homework HW : hwlist)
{
%>

<br/>
<center><h1><font color="White">UPDATE HOMEWORK</font></h1></center>
<br/><br/><br/><br/><br/><br/><br/>
<form method="POST" action="UpdateHomework">
 <table align= "center">  
    <tr>
  	<td>
     <font color="white">HomeWorkID</font> 
    </td>
     <td>
    <input type="text" name="hwid" value="<%=HW.getHWID()%>"  disabled>
    </td>
    </tr>
    <tr><td></td></tr>
    <tr><td></td></tr>
	<tr>
     <td>
     <font color="white">Grade</font> 
    </td>
    <td>
    <input type="text" name="grade" placeholder="Enter Grade" value="<%=HW.getGrade()%>"required>
	</td>
	</tr>
	<tr><td></td></tr>
	<tr><td></td></tr>
	<tr>
	<td>
     <font color="white">Subject</font>
    </td>
    <td>
    <input type="text" name="subject" placeholder="Enter Subject" value="<%=HW.getSubject()%>" required>
	</td>
	</tr>
	<tr><td></td></tr>
	<tr><td></td></tr>
	<tr>
	<td>
	 <font color="white">Description</font>
    </td>
    <td>
    <input type="text" name="description" placeholder="Description" value="<%=HW.getDescription()%>" required>
	</td>
	</tr>
	<tr><td></td></tr>
	<tr><td></td></tr>
	<tr>
	<td>
     <font color="white">DueDate</font>
    </td>
    <td>
    <input type="text" name="dudate" placeholder="dd/mm/yyyy" value="<%=HW.getDuedate()%>" required>
    </td>
    </tr>
     <tr><td>
	<input type="hidden" name="HiddenId" value="<%=HW.getHWID()%>" >

</td></tr>
</table>

<br/>
<center>    
  <input type="submit" value="Update" class="btn btn-success">
</center>
</form>
<% 
   }
%>

</body>
</html>