<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "tommy.web.boardone.BoardDAO" %>    
<%@ page import = "tommy.web.boardone.BoardVO" %>    
<%@ page import = "java.util.List" %>    
<%@ page import = "java.text.SimpleDateFormat" %>    
<%@ include file = "view/color.jsp" %>    
<% 
	// <수정1>
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd HH:mm");
%>
<%
	// <수정2>
	int count = 0;
	int number = 0;
	List<BoardVO> articleList = null;
	BoardDAO dbPro = BoardDAO.getInstance();
	if(count > 0) {
		articleList = dbPro.getArticle(); // <수정3>
	}
	number = count; // <수정4>
%>

<html>
<head>
<title>BOARD</title>
<link href = "style.css" rel = "stylesheet" type = "text/css">
</head>
<body bgcolor = "<%=count%>">
<center>
	<b>LIST(total : <%=count%> %>)</b>
	<table width = "700">
		<tr>
			<td align = "right" bgcolor = "<%=value_c %>">
				<a href = "wrtieForm.jsp">post</a>
			</td>
		</tr>
	</table>
<%
	if (count == 0) {
%>
	<table width = "700" border = "1" cellpadding = "0" cellspacing = "0">
		<tr>
			<td align = "center">no article saved.</td>
		</tr>
	</table>
<%
	} else {
%>	
	<table border = "1" width = "700" cellpadding = "0" cellspacing = "0" align = "center">
		<tr height = "30" bgcolor = "<%=value_c%>">
			<td align = "center" width = "50">no.</td>
			<td align = "center" width = "250">title</td>
			<td align = "center" width = "">wirter</td>
			<td align = "center" width = "">date</td>
			<td align = "center" width = "">count</td>
			<td align = "center" width = "">ip</td>
		</tr>
<%
	for (int i = 0 ; i < articleList.size(); i++) {
		BoardVO article = (BoardVO)articleList.get(i);
%>
		<tr>
			<td align = "center" width = "50"><%=number--%></td>
			<td width = "250">
				<!-- 수정 5 -->
				<a href = "content.jsp?num=<%=article.getNum()%>&pageNum=1">
				<!-- 수정 6 -->
				<%=article.getSubject() %></a>
				<%if(article.getReadcount()>=20){ %>
				<img src = "images/hot.gif" border = "0" height = "16"><% } %>
			</td>
			<td align = "center" width = "100">
				<a href = "mailto : <%=article.getEmail()%>"><%=article.getWriter()%></a>
			</td>
			<td align = "center" width = "150">
				<%=sdf.format(article.getRegdate())%>
			</td>
			<td align = "center" width = "50"><%=article.getReadcount() %></td>
			<td align = "center" width = "100"><%=article.getIp() %></td>
		</tr>
		<% } %>
	</table>
	<% } %>
	<!-- 수정 7 -->
</center>
</body>
</html>