<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	// String message = request.getParameter("message");
%>

<jsp:useBean id = "msg" class = "tommy.web.sample.simpleData"/>
<%-- SimpleData msg = new SimpleData(); --%>
<jsp:setProperty name = "msg" property = "message" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Simple Beans Programme result</title>
</head>
<body>

	<h1>Simple Beans Programme Result</h1>
	<hr color = "red"></hr><br>
	<font size = "5">
	message : <jsp:getProperty name = "msg" property = "message" />
	</font>
</body>
</html>