<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "tommy.web.memberone.*"%>

<jsp:useBean id = "dao" class = "tommy.web.memberone.StudentDAO"/>

<html>
<head>
<title>Update Form</title>
<link href = "style.css" rel = "stylesheet" type = "text/css" />
<script language = "javascript" src = "script.js"></script>
</head>

<%
	String loginID = (String)session.getAttribute("loginID");
	StudentVO vo = dao.getMember(loginID);
%>

<body>
<form name = "regForm" method = "post" action = "modifyProc.jsp">
<table>
	<tr>
		<td colspan = "2" align = "center">EDIT YOUT INFORMATION</td>
	</tr>
	<tr>
		<td align = "right">ID </td>
		<td><%=vo.getId() %></td>
	</tr>
	<tr>
		<td align = "right">PASSWORD </td>
		<td><input type = "password" name = "pass" value = "<%=vo.getPass()%>"/></td>
	</tr>
	<tr>
		<td align = "right">PASSWORD CHECK </td>
		<td><input type = "password" name = "repass" value = "<%=vo.getPass()%>"/></td>
	</tr>
	<tr>
		<td align = "right">NAME </td>
		<td><%=vo.getName() %></td>
	</tr>
	<tr>
		<td align = "right">PHONE </td>
		<td>
			<input type = "text" name = "phone1" size = "4" value = "<%=vo.getPhone1()%>"/> - <input type = "text" name = "phone2" size = "4" value = "<%=vo.getPhone2()%>"/> - <input type = "text" name = "phone3" size = "4" value = "<%=vo.getPhone3()%>"/>
		</td>
	</tr>
	<tr>
		<td align = "right">EMAIL </td>
		<td><input type = "text" name = "email" value = "<%=vo.getEmail() %>"/></td>
	</tr>
	<tr>
		<td align = "right">ZIP CODE </td>
		<td>
			<input type = "text" name = "zipcode" value = "<%=vo.getZipcode()%>"/>
			<input type = "button" value = "SEARCH" onClick = "zipCheck()"/>
		</td>
	</tr>
	<tr>
		<td align = "right"> ADDRESS 1 </td>
		<td><input type = "text" name = "address1" size = "50" value = "<%=vo.getAddress1()%>"></td>
	</tr>
	<tr>
		<td align = "right"> ADDRESS 2 </td>
		<td><input type = "text" name = "address2" size = "50" value = "<%=vo.getAddress2()%>"></td>
	</tr>
	<tr>
		<td colspan = "2" align = "center">
			<input type = "button" value = "SUBMIT" onClick = "updateCheck()"/> &nbsp;&nbsp;
			<input type = "button" value = "CANCLE" onClick = "javascript:window.location='login.jsp'"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>