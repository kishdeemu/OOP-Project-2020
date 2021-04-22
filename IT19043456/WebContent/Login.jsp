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
	<title>Login</title>
	</head>
	<body style="background-image: url('images/bg.jpg'); background-size: 100%; background-attachment: fixed;">
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
							<li class="nav-item"><a href="index.jsp" class="nav-link">Go to Home</a></li>
							
						</ul>
					</div>
				</div>
			</nav>
			<!-- NAVIGATION BAR - CLOSE -->
	<!-- -------------------------------------------------------------------------------------------------------------------------------------- -->
	
	<div class="container" style="margin-top:50px; margin-bottom: 40px;">
			<div class="card-deck">
				<div class="card" style="background-color: #4d6aa3;">
					<img class="card-img-top mx-auto img-thumbnail" src="images/books.png" alt="books image" style="opacity: 0.9;">
					<div class="card-body">
						<h5 class="card-title text-center text-white" style="font-size:30px;">Login as Student</h5>
						<p class="card-text text-white font-italic"> "If you are a student..please use this link to log into your profile."</p>
					</div>
					<div class="card-footer" style="text-align: center;">
						<button type="button" class="btn btn-primary">LOGIN</button>
		
					</div>
				</div>
				<div class="card" style="background-color: #059e07;">
					<img class="card-img-top mx-auto img-thumbnail" src="images/whiteboard.png" alt="whiteboard image" style="opacity: 0.9;">
					<div class="card-body">
						<h5 class="card-title text-center text-white" style="font-size:30px;">Login as Teacher</h5>
						<p class="card-text text-white font-italic"> "If you are a teacher..please use this link to log into your profile."</p>
					</div>
					<div class="card-footer" style="text-align: center;">
						<button type="button" class="btn btn-primary">LOGIN</button>
					</div>
				</div>
				
				<div class="card" style="background-color: #2d2a33;">
					<img class="card-img-top mx-auto img-thumbnail" src="images/admin-login.png" alt="Hat image"  style="opacity: 0.9;">
					<div class="card-body">
						<h5 class="card-title text-center text-white" style="font-size:30px;">Login as an Admin</h5>
						<p class="card-text text-white font-italic"> "If you are an Admin..please use this link to log into your profile."</p>
					</div>
					<div class="card-footer" style="text-align: center;">
						<a href="admin-login.jsp"><button type="button" class="btn btn-primary">LOGIN</button></a>
					</div>
				</div>
			
			
			</div>
		</div>
		
		<div class="container-fluid border border-dark bg-dark" style="height: 45px;">
				<div class="container-fluid">
					<p class="text-white font-italic" style="margin-top: 5px;">All right reserved</p>
					<p class="text-white font-italic float-right" style="margin-top: -40px;">Malabe Weekend</p>
					
				</div>
			
		</div>
	
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	</body>
</html>