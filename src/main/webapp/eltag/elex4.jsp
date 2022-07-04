<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session = "ture" %>
<%
	request.setAttribute("name", "LEE");
%>
<html>
<head><title>EL Object</title></head>
<body>
requested URI : ${pageContext.request.requestURI} <br>
requested name property : ${requestScope.name} <br>
code parameter : ${param.code} <br>
</body>
</html>