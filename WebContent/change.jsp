<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<link rel="stylesheet" type="text/css" href="common.css">

</head>
<body>
<%@ include file="userheader.jsp"%>
	<center>
		<h2>Change Password</h2>
	</center>
	<%
		String name = (String) session.getAttribute("uname");
		if (session.getAttribute("useremail") == null) {
			response.sendRedirect("home.jsp");
		} else {
	%>
	<form name="loginform" action="changeuserpwd.jsp" method="post">
		<center>
			<div id="Login">
				<table>
					<br>
					<br>
					<tr>
						<td>Old Password:</td>
						<td><input type="password" size="35"
							placeholder="Enter Old Password" id="input" name="old"></td>
						<br>
					</tr>
					<br>
					<tr>
						<td>New Password:</td>
						<td><input type="password" size="35"
							placeholder="Enter New Password" id="input" name="newpass"></td>
						<br>
					</tr>
					<br>
					<tr>
						<td>Confirm New Password:</td>
						<td><input type="password" size="35"
							placeholder="Confirm New Password" id="input" name="connew"></td>
						<br>
					</tr>


				</table>
				<br> <input type="submit" class="button" value="Change"
					id="submit"><br>
			</div>
		</center>

	</form>
	<%
		}
	%>
</body>
</html>