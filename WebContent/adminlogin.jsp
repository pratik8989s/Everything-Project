
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login-Soft Cart</title>
<link rel="stylesheet" type="text/css" href="common.css">

</head>
<body >
<%@ include file = "logoutheader.jsp"; %>
	<form  action="ShoppingController" method="post">

		<br> <br> <br> <br>


		<center>
			<div>
				<h1>Admin Login</h1>
				<table>
					<tr>
						<td>Username:</td>
						<td><input type="text" placeholder="Enter Your Email"
							id="input" name="adminemail1" /></td>
						<br>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" placeholder="Enter Password"
							id="input" name="adminpassword1" /></td>
						<br>
					</tr>
				</table>

				<br> <input type="submit" value="Login" id="submit" />
				<input type="reset" value="Reset"><br>
				<br> <br> <input type="hidden" value="adminlogin"
					name="category" />
			</div>
		</center>


	</form>
</body>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footerhome.jsp"%>
</html>