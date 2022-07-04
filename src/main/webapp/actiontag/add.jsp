<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "tommy.web.actiontag.Customer" %>
 <% request.setCharacterEncoding("euc-kr"); %>
 <jsp:useBean id = "customer" class = "tommy.web.actiontag.Customer" scope = "page" />
 <jsp:setProperty name = "customer" property = "*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Information</title>
</head>
<body>

<ul>
	<li>name : <jsp:getProperty name = "customer" property = "name"/></li>
	<li>email : <jsp:getProperty name = "customer" property = "email"/></li>
	<li>phone : <jsp:getProperty name = "customer" property = "phone"/></li>
</ul>

</body>
</html>