<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="scroll-behavior: smooth;">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="css/animate.css" rel="stylesheet" type="text/css">
		<script src="js/bootstrap.min.js"> </script>
		<script src="js/wow.min.js"></script>
		
		<script>
			new WOW().init();
		
		</script>
		
	</head>
	
	<body style="background-color: #cccac6;">

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
						<li class="nav-item"><a href="Login.jsp" class="nav-link">Login</a></li>
						
					</ul>
				</div>
			</div>
		</nav>
		<!-- NAVIGATION BAR - CLOSE -->
<!-- -------------------------------------------------------------------------------------------------------------------------------------- -->
		
		<div class="jumbotron container-fluid fadeIn animated" style="background-image: url('images/bg-home.jpg'); background-size: 100%; background-attachment: fixed;">
			<div class="container fadeInDown animated" >
				<h1 class="display-4 text-white font-weight-bolder">Welcome!</h1>
				<p class="lead text-white font-weight-bold" style="font-size: 30px;">Online School Information Management System</p>
			</div>
			<div class="card mx-auto border border-white fadeInDown animated wow" data-wow-delay="0.5s" style="width: 800px; margin-top: 50px; background-color: #ffffff00; margin-bottom: 20px;">
				<div class="card-body fadeInDown animated wow" data-wow-delay="0.5s">
					<p class="lead text-white font-italic" style="font-size: 30px;">"Education is the passport to the future, for tomorrow belongs to those who prepare for it today."</p>
					<p class="lead text-white font-weight-bold float-right">-Malcolm X-</p>
				</div>
			</div>
			<div style="text-align: center;">
				<a href="#div" style="text-decoration: none;"><button class="btn btn-secondary rounded fadeIn animated wow" data-wow-delay="2s" type="button" style="font-size: 45px;">EXPLORE</button></a>
			</div>
		
		
		</div>
		
		
		<div id="div" class="container" style="margin-top:50px; margin-bottom: 50px;">
			<div class="card-deck wow fadeIn animated" data-wow-delay="0.2s">
				<div class="card">
					<img class="card-img-top mx-auto img-thumbnail" src="images/student.png" alt="Student image" >
					<div class="card-body">
						<h5 class="card-title">Student Profile</h5>
						<p class="card-text"> "Education is a priviledge..checkout your profile."</p>
					</div>
					<div class="card-footer">
						<button type="button" class="btn btn-primary">Goto Profile</button>
					</div>
				</div>
				<div class="card">
					<img class="card-img-top mx-auto img-thumbnail" src="images/teacher.png" alt="Teacher image">
					<div class="card-body">
						<h5 class="card-title">Teacher Profile</h5>
						<p class="card-text"> "Keep in touch with your students...manage your activities through your own profile."</p>
					</div>
					<div class="card-footer">
						<button type="button" class="btn btn-primary">Goto Profile</button>
					</div>
				</div>
				<div class="card">
					<img class="card-img-top mx-auto img-thumbnail" src="images/library.png" alt="Library image">
					<div class="card-body">
						<h5 class="card-title">Digital Library</h5>
						<p class="card-text"> "Need to gather more knowledge...check out the DIGITAL LIBRARY..."</p>
					</div>
					<div class="card-footer">
						<button type="button" class="btn btn-primary">Discover</button>
					</div>
				</div>
				<div class="card">
					<img class="card-img-top mx-auto img-thumbnail" src="images/admin.jpg" alt="admin image">
					<div class="card-body">
						<h5 class="card-title">Admin Profile</h5>
						<p class="card-text"> "With great power comes great Responsibilities..."</p>
					</div>
					<div class="card-footer">
						<a href="admin-login.jsp"><button type="button" class="btn btn-primary">Goto Profile</button></a>
						<a href="admin-register.jsp" style="font-size: 13px;" class="float-right">Register here</a>
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