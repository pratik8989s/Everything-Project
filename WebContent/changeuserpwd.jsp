<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@page import="com.shopping.dao.ChangeUserPassDao"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Password</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
<%@ include file="userheader.jsp"%>
	<%
String oldpass = request.getParameter("old"); 
String newpass = request.getParameter("newpass");
String conpass = request.getParameter("connew");
System.out.println(oldpass);
System.out.println(newpass);
System.out.println(conpass);
if(newpass.equals(conpass))
{
 
	String v = ChangeUserPassDao.updateUserPass(oldpass, newpass);
	if(v.equals("true")) {
%>
	<center>
<br><br><br><br><br><br><br><br><br><br><br><br>
		<h2>
			<font color=green>Password Successfully changed!!!</font>
		</h2>
	
		<a href="first.jsp" class="button">Back to home page</a>
	</center>

	<% }else{ %>
	<center>
<br><br><br><br><br><br><br><br><br><br><br><br>
		<h2>
			<font color=green>Password Not changed.Try Again</font>
		</h2>
	
		<a href="first.jsp" class="button">Back to home page</a>
	</center>
	
	<% }}else{%>
<br><br><br><br><br><br><br><br><br><br><br><br>
	
	<center>
Password & Confirm Password Should be Same......
		<a href="first.jsp" class="button">Back to home page</a>
	
		<a href="change.jsp" class="button">Try Again</a>
	</center>
	<% } %>
</body>
</html>