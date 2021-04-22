<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import ="com.model.Book" %>
<%@ page import ="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Book</title>
</head>
<body>
    <%
	ArrayList<Book> BookList = new ArrayList();
	BookList = (ArrayList)request.getAttribute("Bookdetails") ;

	
	for(Book book : BookList)
	{
	%>
   <form method="POST" action="UpdateBook">
    
    <font size="6px">Book ID </font>
    <input type="text"  value="<%=book.getBookId()%>" disabled>

    <font size="6px">Book Title </font>
    <input type="text" name="title" value="<%=book.getBookTitle()%>"required>

    <font size="6px">Book Edition </font>
    <input type="text" name="edition" value="<%=book.getBookEdition()%>"required>

    <font size="6px">Book Author </font>
    <input type="text" name="author" value= "<%=book.getBookAuthor()%>"required>
     
    <font size="6px">Book Copies </font>
    <input type="text" name="copies" value="<%=book.getBookCopies()%>"required>
    
  <font size="6px">Book Remarks </font>
  <input type="text" name="remarks" value="<%=book.getBookRemarks()%>"required>  
  
   <input type="hidden" name="HiddenId" value="<%=book.getBookId()%>" >
    
  <input type="submit" name="upload" value="Update Book Details">
    
  </form>
    
    
    <% 
	}
	%>
</body>
</html>