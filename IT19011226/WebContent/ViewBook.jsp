<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="com.model.Book" %>
<%@ page import ="com.service.BookServiceImpl" %>
<%@ page import ="com.service.IntBookService" %>
<%@ page import ="java.util.ArrayList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library All Books</title>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
</head>

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

<%
		//Get data inside arraylist
		IntBookService bookview = new BookServiceImpl();
		ArrayList<Book> Booklist = bookview.getBooks("");
		
		//Check for data
		if(Booklist.size() == 0){
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
<h1>Book Data</h1>
</center>

<table id="book" style="width:100%" >

<tr>
<th>Book ID</th>
<th>Book title</th>
<th>Book edition</th>
<th>Book author</th>
<th>Number of copies</th>
<th>Remarks</th>
<th>Update/Delete</th>
</tr>

<%
//get item details from database
for(Book book : Booklist)
{
%>

<tr>
<td><%=book.getBookId() %></td>
<td><%=book.getBookTitle() %></td>
<td><%=book.getBookEdition() %></td>
<td><%=book.getBookAuthor() %></td>
<td><%=book.getBookCopies() %></td>
<td><%=book.getBookRemarks() %></td>

<td> 
<!-- button for update item -->
<br/>
<form method = "POST" action="DoUpdateBook">
<input type="hidden" name="HiddenBookID" value="<%=book.getBookId() %>">
<input type="submit"  value="Update Book">
</form>
<br/>
<!-- button for delete item -->
<form method = "POST" action="DeleteBook">
<input type="hidden" name="HiddenBookID" value="<%=book.getBookId() %>">
<input type="submit"  value="Delete Book">
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