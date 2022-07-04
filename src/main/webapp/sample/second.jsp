<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>JSP File</title>
</head>
<body>

	<h2>JSP Script example</h2>
	<% // Scriptlet - 연산, 처리 
	String scriptlet = "this is scriptlet.";
	String comment = "this is comment";
	out.println("내장객체를 이용한 출력 : " + declation + "<br></br>");
%>

	선언문 출력(변수) : <%=declation%> <br></br> 
	선언문 출력 (메소드) : <%=declationMethod()%><br></br> 
	스크립트릿 출력하기 : <%=scriptlet%><br></br>

	<!-- jsp에서 사용하는 html 주석 부분 -->
	<!-- html 주석 : <%=comment%> -->
	<br></br>
	<%-- jsp 주석 : <%=comment%> --%>
	<br></br>

	<% 
	// 자바 주석
	/*
		여러줄 주석
	*/
%>

	<%!// declation = 변수 선언
	String declation = "선언문 입니다.";%>

	<%!// declation = 메소드 선언
	public String declationMethod() {
		return declation;
	}%>


</body>
</html>