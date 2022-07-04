<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int bufferSize = out.getBufferSize();
	int remainSize = out.getRemaining();
	int usedSize = bufferSize - remainSize;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

hole Buffer Size : <%=bufferSize %> <br>
used Buffer Size : <%=usedSize %> <br>
remain Buffer Size : <% out.println(remainSize); %> byte <br>

</body>
</html>