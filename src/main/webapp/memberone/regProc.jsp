<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>

<jsp:useBean id = "dao" class = "tommy.web.memberone.StudentDAO"/>
<jsp:useBean id = "vo" class = "tommy.web.memberone.StudentVO"/>
<jsp:setProperty name = "vo" property = "*" />

<%
	boolean flag = dao.memberInsert(vo);
%>

<!DOCTYPE html>

<html>
<head>
<title>SIGN UP CHECK</title>
</head>
<link href = "style.css" rel = "stylesheet" type = "text/css">
<body bgcolor = "#FFFFCC">
<br>
<center>
<%
	if (flag) {
		out.println("<b> Congratulations on becaming a member!</b><br>");
		out.println("<a href = login.jsp>LOG IN</a>");
	}else {
		out.println("<b>Please re-enter your ID/PASSWORD</b>");
		out.println("<a href = regForm.jsp>SIGN UP AGAIN</a>");
	}
%>
</center>
</body>
</html>