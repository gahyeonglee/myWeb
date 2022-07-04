<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Print Server Info</title>
</head>
<body>

Server Information : <%= application.getServerInfo() %> <br>
Servlet Application Major Version : <%= application.getMajorVersion() %> <br> 
Servlet Application Minor Version : <%= application.getMinorVersion() %> <br> 

</body>
</html>