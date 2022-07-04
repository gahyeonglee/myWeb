<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext default object</title>
</head>
<body>

<%
	HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
%>

is the same default object and pageContext.getRequest()?
<%= request == httpRequest %> <br>
Print Data using pageContext.getOut() Method :
<% pageContext.getOut().println("Hi!"); %>

</body>
</html>