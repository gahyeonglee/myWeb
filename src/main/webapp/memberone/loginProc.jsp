<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id = "dao" class = "tommy.web.memberone.StudentDAO"/>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	int check = dao.loginCheck(id,pass);
%>
<%
	if(check == 1) {
		session.setAttribute("loginID", id);
		response.sendRedirect("login.jsp");
	}else if (check == 0) {
%>
	<script>
		alert("wrong password");
		history.go(-1);
	</script>		
<%
	} else {
%>
	<script>
		alert("unexisted ID");
		history.go(-1);
	</script>
<%	
	}
%>