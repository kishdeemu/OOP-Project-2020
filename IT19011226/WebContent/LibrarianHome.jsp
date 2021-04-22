
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<script>
function addbookpage(){
	location.href="AddBook.jsp";
}
function viewallbooks(){
	location.href = "ViewBook.jsp";
}

</script>

</head>

<!-- Validating session-->
<%

//Prevent from back button redirect
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

//validate session
	if(session.getAttribute("username") == null)
	{
		response.sendRedirect("LibrarianLogin.jsp");
	}

%>

<body>

<form action="LibrarianLogout">
<input type="submit" value="LOGOUT">
</form>
<br/>
<input type="button" value="Add New Book" onclick="addbookpage()">
<br/>
<input type="button" value="View All Books" onclick="viewallbooks()">




</body>

</html>