<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Account</title>
<link href = "Account.css"  rel ="stylesheet" type ="text/css">

</head>
<body>

	<table>
	<c:forEach var="std" items="${studentDetails}">
	
	<tr>
		<th>Student ID</th>
		<td>${std.id}</td>
	</tr>

	<tr>	
		<th>Student first Name</th>
		<td>${std.f_name}</td>	
	</tr>
	
	<tr>
		<th>Student Last Name</th>
		<td>${std.l_name}</td>
	</tr>
	
	<tr>
		<th>Student Email</th>
		<td>${std.email}</td>
	</tr>

	<tr>
		<th>Student Phone </th>
		<td>${std.phone_num}</td>	
	</tr>
	
	<tr>
		<th>Student Password</th>
		<td>${std.password}</td>
	</tr>
	
	<tr>
		<th>Student Address</th>
		<td>${std.address}</td>
	</tr>
	
	<tr>
		<th>Student Age</th>
		<td>${std.age}	</td>
	</tr>
	
		
			
	<!--Update student - variables  -->
	<c:set var = "std_studentid" value ="${std.id}"/>
	<c:set var = "std_firstname" value ="${std.f_name}"/>
	<c:set var = "std_lastname" value ="${std.l_name}"/>
	<c:set var = "std_email" value ="${std.email}"/>
	<c:set var = "std_phone" value ="${std.phone_num}"/>
	<c:set var = "std_password" value ="${std.password}"/>
	<c:set var = "std_address" value ="${std.address}"/>
	<c:set var = "std_age" value ="${std.age}"/>
	
		
	</c:forEach>
	</table>
	
	<!-- assign the jsp url to variable -->
	<c:url value = "StudentUpdate.jsp"  var = "std_update">
	
		<!-- what are data have to bring above jsp page -->
		<c:param name = "stdid" value ="${std_studentid}"/>
		<c:param name = "firstname" value ="${std_firstname}"/>
		<c:param name = "lastname" value ="${std_lastname}"/>
		<c:param name = "email" value ="${std_email}"/>
		<c:param name = "phone" value ="${std_phone}"/>
		<c:param name = "password" value ="${std_password}"/>
		<c:param name = "address" value ="${std_address}"/>
		<c:param name = "age" value ="${std_age}"/>
			
	</c:url>
	
		
	<!--link that button to StudentUpdate.jsp page -->
	<a href = "${std_update}">	
	<button class = "button button1"> Update My Data</button>
	</a>
	
	<br>
	
	<!-- Delete student -->
	<c:url value = "StudentDelete.jsp" var = "std_delete">
		<c:param name = "stdid" value = "${std_studentid}"/>
		<c:param name = "firstname" value ="${std_firstname}"/>
		<c:param name = "lastname" value ="${std_lastname}"/>
		<c:param name = "email" value ="${std_email}"/>
		<c:param name = "phone" value ="${std_phone}"/>
		<c:param name = "password" value ="${std_password}"/>
		<c:param name = "address" value ="${std_address}"/>
		<c:param name = "age" value ="${std_age}"/>
	</c:url>
	
	<a href = "${std_delete}">
	<br> <button class = "button button2"> Delete Account</button>
	</a>
			
</body>
</html>