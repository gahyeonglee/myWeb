<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN US!</title>
</head>
<body>

<form method = "post" action = "add.jsp">
	<table border = "1" width = "300">
		<tr>
			<td width = "100">name</td>
			<td width = "200"><input type = "text" name = "name" size = "25"/></td>
		</tr>
		<tr>
			<td width = "100">email</td>
			<td width = "200"><input type = "text" name = "email" size = "25"/></td>
		</tr>
		<tr>
			<td width = "100">phone</td>
			<td width = "200"><input type = "text" name = "phone" size = "25"/></td>
		</tr>
		<tr>
			<td colspan = "2" align = "center">
				<input type = "submit" value = "Join"/>
			</td>
		</tr>
	</table>
</form>

</body>
</html>