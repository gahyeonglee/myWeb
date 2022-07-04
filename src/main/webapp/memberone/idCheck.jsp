<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id = "dao" class = "tommy.web.memberone.StudentDAO"/>

<%
	String id = request.getParameter("id");
	boolean check = dao.idCheck(id);
%>

<html>
<head>
<title>ID CHECK</title>
<link href = "style.css" rel = "stylescheet" type = "text/css"/>
<script language = "JavaScroipt" src = "script.js"></script>
</head>
<body bgcolor = "#FFFFCC">
<br>
<center>
<b><%=id%></b>
<%
	if(check) {
		out.println("is already uesed. <br>");
	}else{
		out.println("is generable ID! <br>");
	}
%>
<a href = "#" onClick = "javascript:self.close()">CLOSE</a>
</center>
</body>
</html>