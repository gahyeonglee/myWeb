<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "tommy.web.memberone.*" %>
<jsp:useBean id = "dao" class = "tommy.web.memberone.StudentDAO"/>
<html>
<head><title>회원탈퇴</title></head>
<%
	String id = (String)session.getAttribute("loginID");
	String pass = request.getParameter("pass");
	int check = dao.deleteMember(id, pass);
	if(check == 1) {
		session.invalidate();
%>
<meta http-equiv="Refresh" content = "3;url=login.jsp">
<body>
<center>
<font size = "5" face = "arial">
withdrawal complete!<br>
good bye.<br>
go back to login page in 3 seconds.
</font>
</center>
<% }else { %>
<script>
	alert("your password is not correct.");
	history.go(-1);
</script>
<% } %>
</body>
</html>

