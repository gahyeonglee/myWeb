<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "view/color.jsp" %>

<html>
<head>
<title>My Board</title>
<link href = "style.css" rel = "stylesheet" type = "text/css"/>
<script language = "javascript" src = "script.js"></script>
</head>
<!-- 새글/답별글 구분하는 코드 추가 <1> -->
<%
	int num = 0, ref = 1, step = 0, depth = 0;
	try {
		if(request.getParameter("num") != null) {
			num = Integer.parseInt(request.getParameter("num"));
			ref = Integer.parseInt(request.getParameter("ref"));
			step = Integer.parseInt(request.getParameter("step"));
			depth = Integer.parseInt(request.getParameter("depth"));
		}
%>

<body bgcolor = "<%=bodyback_c%>">
<center>
	<b>POSTING</b>
	<br>
	<form method = "post" name = "writeForm" action = "writeProc.jsp" onsubmit = "return writeSave()">
		<input type = "hidden" name = "num" value = "<%=num%>"/>
		<input type = "hidden" name = "ref" value = "<%=ref%>"/>
		<input type = "hidden" name = "step" value = "<%=step%>"/>
		<input type = "hidden" name = "depth" value = "<%=depth%>"/>
	<table width = "400" border = "1" cellpadding = "0" cellspacing = "0" align = "center" bgcolor="<%=bodyback_c%>">
		<tr>
			<td align = "right" colspan = "2" bgcolor = "<%= value_c%>">
				<a href = "list.jsp">list</a>
			</td>
		</tr>
		<tr>
			<td width = "70" bgcolor = "<%=value_c%>" align = "center">name</td>
			<td width = "330">
				<input type = "text" size = "12" maxlength = "12" name = "writer"/>
			</td>
		</tr>
		<tr>
			<td width = "70" bgcolor = "<%=value_c%>" align = "center">email</td>
			<td width = "330">
				<input type = "text" size = "30" maxlength = "30" name = "email"/>
			</td>
		</tr>
		<tr>
			<td width = "70" bgcolor = "<%=value_c%>" align = "center">title</td>
			<td width = "330">
				<input type = "text" size = "50" maxlength = "50" name = "subject"/>
<%
				if(request.getParameter("num") == null) {
%>				
					<input type = "text" size = "50" maxlength = "50" name = "subject"/>
<%
				}else{
%>
					<input type = "text" size = "50" maxlength = "50" name = "subject" value = "[reply]"/>
<%
				}
%>									
			</td>
		</tr>
		<tr>
			<td width = "70" bgcolor = "<%=value_c%>" align = "center">contents</td>
			<td width = "330">
				<textarea name = "content" rows = "13" cols = "50"></textarea>
			</td>
		</tr>
		<tr>
			<td width = "70" bgcolor = "<%=value_c%>" align = "center">password</td>
			<td width = "330">
				<input type = "password" size = "10" maxlength = "10" name = "pass"/>
			</td>
		</tr>
		<tr>
			<td colspan = "2" bgcolor = "<%=value_c%>" align = "center">
				<input type ="submit" value = "post"/>
				<input type ="reset" value = "re-write"/>
				<input type ="button" value = "list" onclick = "window.location='list.jsp'"/>				
			</td>
		</tr>
	</table>
	</form>
<!-- 예외처리 (2) -->
<% }catch (Exception e) {} %>	
</center>
</body>
</html>