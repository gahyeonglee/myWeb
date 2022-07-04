<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "tommy.web.actiontag.Customer, java.util.ArrayList" %>
<%
	ArrayList<String> singer = new ArrayList<String>();
	singer.add("girls generation");
	singer.add("wonder girls");
	request.setAttribute("singer", singer);
	
	Customer[] customer = new Customer[2];
	customer[0] = new Customer();
	customer[0].setName("SON");
	customer[0].setEmail("son@mail.com");
	customer[0].setPhone("010-1234-5678");
	customer[1] = new Customer();
	customer[1].setName("HONG");
	customer[1].setEmail("hong@mail.com");
	customer[1].setPhone("010-9876-5432");
	request.setAttribute("customer", customer);
%>

<html>
<head>
<title>EL Example</title>
</head>
<body>
	<ul>
		<li>${singer[0]}, ${singer[1]}</li>
	</ul>
	<ul>
		<li>name : ${customer[0].name}</li>
		<li>email : ${customer[0].email}</li>
		<li>phone : ${customer[0].phone}</li>
	</ul>
	<ul>
		<li>name : ${customer[1].name}</li>
		<li>email : ${customer[1].email}</li>
		<li>phone : ${customer[1].phone}</li>
	</ul>	
</body>
</html>