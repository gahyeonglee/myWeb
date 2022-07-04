<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<table width = "100%" border = "1" cellpadding = "0" cellspacing = "0">

<tr>
	<td>Product no.</td> <td>12345</td>
</tr>

<tr>
	<td>Price</td> <td>10,000원</td>
</tr>
	
</table>

<jsp:include page ="infoSub.jsp" flush ="false">
	<jsp:param name = "type" value = "A" />
</jsp:include>
