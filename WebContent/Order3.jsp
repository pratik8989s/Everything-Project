<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@page import="com.shopping.beans.*"%>
<%@ page import="com.shopping.dao.UserCartDao"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Profile</title>
<link rel="stylesheet" type="text/css" href="common.css">
<link rel="stylesheet" type="text/css" href="style-table.css">
</head>
<body>
	<%
		int sum = 0;
		String email = (String) session.getAttribute("useremail");
		String cid = null;
		if (session.getAttribute("useremail") == null) {
			response.sendRedirect("home.jsp");
		} else {

			cid = (String) session.getAttribute("customer_id");
			UserCartDao.fetchUserCart(cid);
			ArrayList<CartBean> cart1 = UserCartDao.cart;
			int j=0;
	%>
	<center>
		<h1>
			<font color=red>Welcome to your cart</font>
		</h1>
		<h2>Products</h2>
	</center>
	<form action="ShoppingController">
		<center>
			<table border=1>
				<tr>

					<th>Product ID</th>
					<th>PRODUCT NAME</th>
					<th>PRODUCT CATEGORY</th>
					<th>PRODUCT STATUS</th>

					<th>PRODUCT DESC</th>
					<th>PRODUCT PRICE</th>
					<th>Quantity</th>
					<th>Total PRICE</th>




				</tr>
				<%
					
						for ( j = 0; j < cart1.size(); j++) {
							String x = cart1.get(j).getPid();
							
				%>
				<tr>
					<td><%=cart1.get(j).getPid()%></td>
					<td><%=cart1.get(j).getPname()%></td>
					<td><%=cart1.get(j).getPcat()%></td>
					<td><%=cart1.get(j).getPstatus()%></td>

					<td><%=cart1.get(j).getPdesc()%></td>
					<td><%=cart1.get(j).getPrice()%></td>

					
					<td><%=request.getParameter(cart1.get(j).getPid())%></td>
					

					<td><%=Integer.parseInt(request.getParameter(cart1
							.get(j).getPid()))
							* Integer.parseInt(cart1.get(j).getPrice())%></td>


					<%
						sum = sum
										+ (Integer.parseInt(request.getParameter(cart1.get(
												j).getPid())) * Integer.parseInt(cart1.get(
												j).getPrice()));
					%>



				</tr>
				<%
					}
				%>
				<tr>
					<td>Total Price:</td>
					<td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td><%=sum%></td>
				</tr>
				

			</table>
			<br> Select Payment mode: <select name="radios">
				<option value="Net Banking">Net Banking</option>
				<option value="COD">COD</option>
				<option value="Debit Card">Debit Card</option>
				<option value="Cerdit Card">Cerdit Card</option>

			</select> 
			
			<input type="hidden" value="pay" name="category" /> 
			<% for ( j = 0; j < cart1.size(); j++) {%>
			
			<input type="hidden" value=<%=request.getParameter(cart1.get(j).getPid())%>
				name=<%=cart1.get(j).getPid()%> />
				
				<%} %>
				<input type="submit" class="button" value="Proceed" id="submit">
	</form>
<%
					}
				%>
	<br>
	<br>
	<br>
	<a href="first.jsp" class="button">Back to home page</a>
	</center>

</body>
</html>