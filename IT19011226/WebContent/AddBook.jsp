<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Add Book</title>
</head>

<!-- validate -->
<%

//validate session
	if(session.getAttribute("username") == null)
	{
		//redirect to login page
		response.sendRedirect("LibrarianLogin.jsp");
	}

	
%>

<body>
<!-- Display message -->
<% 

String msg = (String)request.getAttribute("Message");

if(msg != null){	
%>	

<script type="text/javascript">
var message = "<%=msg%>";
alert(message);

</script>

<% 
}

else{
}

%>

<form method="POST" action="AddBook">
    
<center>
    <br/>
    Book ID 
    <input type="text" name="id"  placeholder="Book ID" required>
    <br/><br/>
	
    Book Title 
    <input type="text" name="title" placeholder="Book Title"required>
	<br/><br/>
	
    Book Edition 
    <input type="text" name="edition" placeholder="Book Editon" required>
	<br/><br/>

	Book Author 
    <input type="text" name="author" placeholder="Book Author" required>
	<br/><br/>
	
    Book Copies 
    <input type="text" name="copies" placeholder="Number of Copies" required>
    <br/><br/>
     
    Book Remarks 
    <input type="text" name="remarks" placeholder="Remarks" required>
    <br/><br/>
        
  <input type="submit" name="upload" value="Add Item" class="button1">
  
</center>
</form> 
</body>
</html>