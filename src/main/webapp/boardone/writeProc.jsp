<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "tommy.web.boardone.BoardDAO" %>
<%@ page import = "java.sql.Timestamp" %>
<%request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id = "article" scope = "page" class = "tommy.web.boardone.BoardVO">
	<jsp:setProperty name = "article" property = "*"/>
</jsp:useBean>

<%
	article.setRegdate(new Timestamp(System.currentTimeMillis()));
	article.setIp(request.getRemoteAddr());
	BoardDAO dbPro = BoardDAO.getInstance();
	dbPro.insertArticle(article);
	response.sendRedirect("list.jsp");
%>