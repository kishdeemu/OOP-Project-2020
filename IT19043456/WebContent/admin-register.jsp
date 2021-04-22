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
			function checkPassword() {
				var password = document.getElementById("Pwd").value;
				var confpassword = document.getElementById("Confpwd").value;
			
				if (password != confpassword) {
					alert("Password Mismatched!!!");
					return false;
				} else {
					alert("Success");
					return true;
				}
			
			
			}
		
		
		</script>
		
	</head>
	<body style="background-image: url('images/admin-reg-bg.jpg'); background-size: 100%; background-attachment: fixed;">

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
						<li class="nav-item"><a href="Login.jsp" class="nav-link">Login</a></li>
						
					</ul>
				</div>
			</div>
		</nav>
		<!-- NAVIGATION BAR - CLOSE -->
<!-- -------------------------------------------------------------------------------------------------------------------------------------- -->
		
		<div class="card container" style="margin-top: 50px; margin-bottom: 120px; width: 800px;">
			<div class="container">
				<div class="card-title">
					<h1 class="display-4 font-weight-bold" style="margin-bottom: 20px;">Register New Admin</h1>
				</div>
				<form action="regAdmin" onsubmit="return checkPassword();" method="POST">
					<div class="form-group row">
						<label class="col-sm-3">User Name</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="Enter User Name" name="Uname" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">Email Address</label>
						<div class="col-sm-9">
							<input type="email" class="form-control" placeholder="Enter email" name="Email" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">Password</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" placeholder="Enter password" name="Pwd" id="Pwd" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">Confirm Password</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" placeholder="Re-enter Password" name="Confpwd" id="Confpwd" required>
						</div>
					</div>
					<div class="card-footer bg-white " style="text-align: right;">
						<p  class="card-text" style="text-align: left;"><a href="admin-login.jsp">Already a member?</a></p>
						<input type="submit" class="btn btn-success" value="REGISTER" style="margin-top: -70px;">
						
					</div>
				</form>
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