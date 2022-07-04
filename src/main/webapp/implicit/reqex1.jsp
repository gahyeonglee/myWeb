<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client/Server Information</title>
</head>
<body>

Client IP : <%= request.getRemoteAddr() %> <br>
Requested Info Length : <%= request.getContentLength() %> <br>
Requested Info Encoding : <%= request.getCharacterEncoding() %> <br>
Requested Info Content Type : <%= request.getContentType() %> <br>
Requested Info Protocol : <%= request.getProtocol() %> <br>
Request Info Transmitting Method : <%= request.getMethod() %> <br>

Request URL = <%= request.getRequestURL().toString() %> <br>
Request URI = <%= request.getRequestURI() %> <br>
Context Path = <%= request.getContextPath() %> <br>
Server Name = <%= request.getServerName() %>
Server Port = <%= request.getServerPort() %>

</body>
</html>