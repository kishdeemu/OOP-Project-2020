<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="js/bootstrap.min.js"> </script>
		<title>Insert title here</title>

		<script>
			function primarySec() {
				var cls = document.getElementById("class").value;
				if(cls == "1" || cls == "2" || cls == "3" || cls == "4" || cls == "5") {
					document.getElementById("section").value = "Primary Section";
				} else if(cls == "6" || cls == "7" || cls == "8" || cls == "9" || cls == "10" || cls == "11") {
					document.getElementById("section").value = "Upper Primary Section";
				} else if(cls == "12") {
					document.getElementById("section").value = "Senior Section";
				}
				
			}
			
		
		</script>
	</head>
	<body style="background-image: url('images/exambg.jpg'); background-size: 100%; background-attachment: fixed;">
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
						<li class="nav-item"><a href="adminDash.jsp" class="nav-link"><% if(session.getAttribute("username") != null) { out.println("Welcome "); out.println(session.getAttribute("username"));} %></a></li>
						<li class="nav-item"><a href="logOutServlet" class="nav-link">logout</a></li>
						
					</ul>
				</div>
			</div>
		</nav>
		<!-- NAVIGATION BAR - CLOSE -->
<!-- -------------------------------------------------------------------------------------------------------------------------------------- -->
		<div class="card container" style="margin-top: 50px; margin-bottom: 120px; width: 800px;">
			<div class="container">
				<div class="card-title">
					<h1 class="display-4 font-weight-bold" style="margin-bottom: 20px;">Add New Exam</h1>
				</div>
				<form action="addExam" method="POST">
					
					<div class="form-group row">
						<label class="col-sm-3">Class</label>
						<div class="col-sm-9">
							<select id="class" class="rounded" style="width:100%;" onchange="primarySec()" name="Class">
								<option selected="selected" disabled>Select Class</option>
								<option value="1">Grade 1</option>
								<option value="2">Grade 2</option>
								<option value="3">Grade 3</option>
								<option value="4">Grade 4</option>
								<option value="5">Grade 5</option>
								<option value="6">Grade 6</option>
								<option value="7">Grade 7</option>
								<option value="8">Grade 8</option>
								<option value="9">Grade 9</option>
								<option value="10">Grade 10</option>
								<option value="11">Grade 11</option>
								<option value="12">Grade A/L</option>
							</select>
						</div>	
					</div>
					<div class="form-group row">
						<div class="col-sm-9">
							<input type="hidden" class="form-control" value="sec" name="Section" id="section" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">Exam</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="Enter Exam Name" name="Exam" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">Date</label>
						<div class="col-sm-9">
							<input type="date" class="form-control" placeholder="Enter Phone Number" name="Date" required>
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-sm-3">Start Time</label>
						<div class="col-sm-9">
							<input type="time" class="form-control" placeholder="Select Time" name="StartTime" required>
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-sm-3">End Time</label>
						<div class="col-sm-9">
							<input type="time" class="form-control" placeholder="Select Time" name="EndTime" required>
						</div>
					</div>
					
					
					<div class="card-footer bg-white " style="text-align: right;">
						<!-- <p  class="card-text" style="text-align: left;"><a href="admin-login.jsp">Already a member?</a></p> -->
						<input type="submit" class="btn btn-success" value="ADD">
						
					</div>
				</form>
			</div>
		</div>
	
	
	
	
	
	
	
	
	
	
	
	

	</body>
</html>