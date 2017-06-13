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
<%@include file="header.jsp"%>
<br><br><br><br><br><br><br><br><br>
	<center>
	<form action="UpdateOrderStatus.jsp">
Update Order Status
		<select name="Ostatus">
			<option value="In Progress">In Progress</option>
			<option value="Dispatched">Dispatched</option>
			<option value="Delivered">Delivered</option>

		</select><br><br>
		<input type="submit" value="confirm" >
		 <input type="hidden" name="oid" value=<%=request.getParameter("oid")%>>


	</form>
	</center>
</body>
</html>