<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select Option</title>
</head>
<body>

<form action ="<%= request.getContextPath() %>/forward/view.jsp">

select page you want to see :
	<select name = "code">
		<option value = "A"> page A </option>
		<option value = "B"> page B </option>
		<option value = "C"> page C </option>
	</select>

<input type = "submit" value = "submit">

</form>

</body>
</html>