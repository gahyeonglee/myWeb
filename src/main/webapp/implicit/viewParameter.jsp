<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.Map"%>
<%
request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Print Requested Parameter</title>
</head>
<body>
	<b>Using request.getParameter() Method</b>
	<br> name parameter =
	<%=request.getParameter("name")%> <br>
	address parameter =
	<%=request.getParameter("address")%>
	<br>
	<br>
	<b>Using reqeust.getParameterValues() Method</b>
	<br>
	<%
	String[] values = request.getParameterValues("pet");
	if (values != null) {
		for (int i = 0; i < values.length; i++) {
	%>
	<%=values[i]%>
	<%
	}
	}
	%>
	<br>
	<br>
	<b>Using request.getParameterNames() Method</b>
	<br>
	<%
	Enumeration enumData = request.getParameterNames();
	while (enumData.hasMoreElements()) {
		String name = (String) enumData.nextElement();
	%>
	<%=name%>
	<%
	}
	%>
	<br>
	<br>
	<b>Using request.getParameterMap() Method</b>
	<br>
	<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[]) parameterMap.get("name");
	if (nameParam != null) {
	%>
	name =
	<%=nameParam[0]%>
	<%
	}
	%>
</body>
</html>