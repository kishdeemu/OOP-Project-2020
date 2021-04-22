<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="com.teacher.model.Homework" %>
<%@ page import ="com.teacher.service.HomeworkServiceImpl" %>
<%@ page import ="com.teacher.service.IntHomeworkService" %>
<%@ page import ="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>View All Homework</title>

<style>

table, th, td {
  border: 1px solid black;
  
}



</style>

</head>
<body style="background-image: url('images/wbord.png'); background-size: 100%;">
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



<%
		//Get data inside arraylist
		IntHomeworkService hwservice = new HomeworkServiceImpl();
		ArrayList<Homework> hwlist = hwservice.getHomework("");
		
		//Check for data
		if(hwlist.size() == 0){
%>
			<br/><center>
			No data found at DB
			</center>
			
<%	
		}
		else{
			
		

%>
<br/>

<center>
<h1>HOMEWORK</h1>
</center>

<table id="book" style="width:80%" align="center" >

<tr>
<th>Homework ID</th>
<th>Grade</th>
<th>Subject</th>
<th>Description</th>
<th>DueDate</th>
<th>Update/Delete</th>
</tr>

<%
//get hw data from database
for(Homework HW : hwlist)
{
%>

<tr>
<td><%=HW.getHWID() %></td>
<td><%=HW.getGrade() %></td>
<td><%=HW.getSubject() %></td>
<td><%=HW.getDescription() %></td>
<td><%=HW.getDuedate() %></td>


<td> 
<!-- button for update item -->
<br/>
<form method = "POST" action="GetUpdateHomework">
<input type="hidden" name="HiddenHwID" value="<%=HW.getHWID() %>">
<input type="submit"  value="Update" class="btn btn-warning">
</form>
<br/>
<!-- button for delete item -->
<form method = "POST" action="DeleteHomework">
<input type="hidden" name="HiddenHwID" value="<%=HW.getHWID() %>">
<input type="submit"  value="Delete" class= "btn btn-danger">
</form>
<br/>
</td>

</tr>

<% }
}
   %>

</table>

<br/>
</body>
</html>