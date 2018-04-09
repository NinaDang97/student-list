<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Insert Page</title>

<link rel="stylesheet" type="text/css" href="css/formStyle.css">

</head>
<body>		
		<a href="StudentList.jsp">View Student List</a>
		
		<h1>Personal Information</h1>
			<form action="StudentInsertServlet" method="POST">
			<label>Student id: </label>
			<input type="text" name="id" required><br>
			
			<label>First name: </label>
			<input type="text" name="firstname" required><br>
			
			<label>Last name: </label>
			<input type="text" name="lastname" required><br>
			
			<label>Street address: </label>
			<input type="text" name="streetaddress" required><br>
			
			<label>Post code: </label>
			<input type="text" name="postcode" required><br>
			
			<label>Post office:</label>
			<input type="text" name="postoffice" required><br>
			
			<input type="submit" value="Submit" id="submit"><br>
		</form>
		
		<p>
		<strong><c:out value="${ message }" /></strong>
		</p>
		
</body>
</html>