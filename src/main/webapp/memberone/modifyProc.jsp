<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "tommy.web.memberone.*" %>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id = "dao" class = "tommy.web.memberone.StudentDAO"/>
<jsp:useBean id = "vo" class = "tommy.web.memberone.StudentVO">
	<jsp:setProperty name = "vo" property = "*" />
</jsp:useBean>
<%
	String loginID = (String)session.getAttribute("loginID");
	vo.setId(loginID);
	dao.updateMember(vo);
%>

<html>
<head><title>Update Process</title></head>
<meta http-equiv = "Refreash" content = "3;url=login.jsp">
<body>
<center>
	<font size = "5" face = "arial">
		<b>your information is edited.</b><br>
		back to login pate in 3 seconds.
	</font>
</center>
</body>
</html>
