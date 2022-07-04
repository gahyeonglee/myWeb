<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
	private int numOne = 0;
	public void jspInit() {
		System.out.println("jspInit() 호출 됨 ... ");
	}
	
	public void jspDestroy() {
		System.out.println("jspDestroy() 호출 됨 ...");
	}
%>

<html>
<head>
<meta charset="UTF-8">
<title>JSP LIFE CYCLE</title>
</head>
<body>

<%
	int numTwo = 0;
	numOne++; // 새로고침시 증가
	numTwo++; // 새로고침마다 초기화
	System.out.println(session.getId());
%>

<ul>
	<li>number one : <%=numOne %></li>
	<li>number two : <%=numTwo %></li>
</ul>

</body>
</html>