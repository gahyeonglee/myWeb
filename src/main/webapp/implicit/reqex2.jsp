<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Form</title>
</head>
<body>

Input Date in form and click "submit" button.

<form action = "viewParameter.jsp" method = "post">
	name : <input type = "text" name = "name" size = "10"><br>
	address : <input type = "text" name = "address" size = "30"><br>
	pet : 
	<input type = "checkbox" name = "pet" value = "dog">dog	
	<input type = "checkbox" name = "pet" value = "cat">cat	
	<input type = "checkbox" name = "pet" value = "bird">bird	
	<br>
	<input type = "submit" value = "submit">
</form>

</body>
</html>