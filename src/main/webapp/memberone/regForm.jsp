<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Form</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<form method="post" action="regProc.jsp" name="regForm">
		<table border="1">
			<tr>
				<td colspan="2" align="center">MEMBER INFORMATION</td>
			</tr>
			<tr>
				<td align="right">ID</td>
				<td><input type="text" name="id" />&nbsp; <input type="button"
					value="CHECK" onClick="idCheck(this.form.id.value)" /></td>
			</tr>
			<tr>
				<td align="right">PASSWORD</td>
				<td><input type="password" name="pass" /></td>
			</tr>
			<tr>
				<td align="right">PASSWORD CHECK</td>
				<td><input type="password" name="repass" /></td>
			</tr>
			<tr>
				<td align="right">NAME</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td align="right">PHONE</td>
				<td><select name="phone1">
						<option value="02">02</option>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
				</select> - <input type="text" name="phone2" size="5" /> - <input type="text"
					name="phone3" size="5" /></td>
			</tr>
			<tr>
				<td align="right">EMAIL</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td align="right">ZIPCODE</td>
				<td><input type="text" name="zipcode" /> <input type="button"
					value="SEARCH" onClick="zipCheck()" /></td>
			</tr>
			<tr>
				<td align="right">ADDRESS 1</td>
				<td><input type="text" name="address1" size="50" /></td>
			</tr>
			<tr>
				<td align="right">ADDRESS 2</td>
				<td><input type="text" name="address2" size="30" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button"
					value="JOIN" onclick="inputCheck()" />&nbsp;&nbsp; <input
					type="reset" value="RE-ENTER" /></td>
			</tr>
		</table>
	</form>

</body>
</html>