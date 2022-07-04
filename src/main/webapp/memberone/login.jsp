<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginID = (String)session.getAttribute("loginID");   
%>
<html>
<head>
<title>LOGIN</title>
<link href = "style.css" type = "text/css" rel = "stylesheet"/>
</head>
<body>
<% if(loginID != null) { %>
		<table border = "1" width = "300">
		<tr>
			<td colspan = "3" align = "center">
				Welcome <%= loginID %> !
			</td>
		</tr>
		
		<tr>
			<td align = "center" width = "100"><a href = "modifyForm.jsp">EDIT</a></td>
			<td align = "center" width = "100"><a href = "deleteForm.jsp">WITHDRAWAL</a></td>
			<td align = "center" width = "100"><a href = "logout.jsp">LOG OUT</a></td>
		</tr>	
		</table>
<%}else { %>		
<form method = "post" action = "loginProc.jsp">
<table width = "300" border = "1">
	<tr>
		<td colspan = "2" align = "center">LOGIN</td>
	</tr>
	<tr>
		<td align = "right" width = "100">ID</td>
		<td width = "200">&nbsp;&nbsp;
			<input type = "text" name = "id" size = "20">
		</td>
	</tr>
	<tr>
		<td align = "right" width = "100">PASSWORD</td>
		<td width = "200">&nbsp;&nbsp;
			<input type = "password" name = "pass" size = "20">
		</td>
	</tr>
	<tr>
		<td colspan = "2" align = "center">
			<input type = "submit" value = "LOGIN" />
			<input type = "button" value = "JOIN US" onClick = "javascript:window.location='regForm.jsp'"/>			
		</td>
	</tr>
	
</table>
</form>
</body>
<% } %>
</html>