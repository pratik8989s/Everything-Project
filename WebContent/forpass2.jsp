<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
<br><br><br><br><br>
<br><br><br><br><br>
<br><br><br><br><br>
<form action="ShoppingController">
<center>
Enter the OTP Send to Your Registered Email <input type="text" name="otp"><br><br>
<input type="submit" value="Proceed">

<input type="hidden" value="userforgetpassword" name="category" />
<input type="hidden" value=<%=request.getParameter("em") %> name="em" />
</center>
</form>
</body>
</html>