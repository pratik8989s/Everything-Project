<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up-Soft Cart</title>

<link rel="stylesheet" type="text/css" href="common.css">


</head>
<body id="sign">

	<form name="myform" action="ShoppingController" method="post">
		<h2 id="signbanner"></h2>
		<h2>
			<center>User Registration</center>
		</h2>
		<br> <br> <br>
		<div id="div1">
			<br> <br>
			<center>
				<table cellspacing="5">
					<tr>
						<td>Name:</td>
						<td><input type="text" id="input" name="name" required></td>
					</tr>
					<tr>
						<td>Address:</td>
						<td><textarea name="addr" id="input">
</textarea></td>
					</tr>
					<tr>
						<td>Contact No:</td>
						<!--  <td><input type="tel" size=10 id="input" name="contactno" required></td>-->
						<td><input type="Number" name="contactno"></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><input type="email" id="input" name="email" required></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" id="input" name="passwd" required></td>
					</tr>
					<tr>
						<td>Confirm Password:</td>
						<td><input type="password" id="input" name="confirmpasswd"
							required></td>
					</tr>

				</table>
			</center>


			<input type="hidden" value="insert" name="category" />
			<center>
				<input type="submit" class="button" value="Register" id="submit">
			</center>
			<br>
		</div>
	</form>
</body>
</html>