<%@page import="tommy.web.actiontag.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "tommy.web.actiontag.Customer, java.util.HashMap"%>
<%
	Customer customer = new Customer();
	customer.setName("SON");
	customer.setEmail("son@mail.com");
	customer.setPhone("010-1234-5678");
	request.setAttribute("customer", customer);
	
	HashMap<String, String> map = new HashMap<String, String>();
	map.put("name","sonata");
	map.put("maker","HYUNDAI");
	request.setAttribute("car", map);
%>

<html>
<head>
<title>EL Example</title>
</head>
<body>
<ul>
	<li>name : ${customer.name}</li>
	<li>name : ${customer.email}</li>
	<li>name : ${customer.phone}</li>	
</ul>
<ul>
	<li>car name : ${car.name}</li>
	<li>brand : ${car.maker}</li>	
</ul>
<br>

</body>
</html>