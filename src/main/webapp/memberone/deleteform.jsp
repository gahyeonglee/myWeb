<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<title>WITHDRAWAL</title>
</head>
<script type="text/javascript">
function begin(){
		document.myForm.pass.focus();
}
function checkIt(){
		if(!document.myForm.pass.value){
				alert("you didn't input your password.");
				document.myForm.pass.focus();
				return false;
		}
}
</script>
<body onload = "begin()">
<form name="myForm" method="post" action="deleteProc.jsp" onsubmit="return checkIt()">
<table width="260" border="1" align="center">
<tr>
		<td colspan="2" align="center">
		<b>WITHDRAWAL</b>
		</td>
</tr>
<tr>
		<td width="150"><b>password</b></td>
		<td width="110">
				<input type="password" name="pass" size="15"></td>
</tr>
<tr>
		<td colspan="2" align="center">
		<input type="submit" value="withdrawal">
		<input type="button" value="cancel"
				onclick="javascript:window.location='login.jsp'">
		</td>
</tr>
</table>
</form>
</body>
</html>