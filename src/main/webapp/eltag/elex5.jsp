<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어의 사용예제</title>
</head>
<body>
<h3>parameter value</h3>
<br>
<form action = "elex5.jsp" method = "post">
	name : <input type = "text" name = "name" value = ${param['name']}>
	<input type = "submit" value = "submit">
</form>
<p>your name is ${param.name}.</p>
</body>
</html>