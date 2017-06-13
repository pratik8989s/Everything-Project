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
		String email = (String) session.getAttribute("useremail");
		String cid = null;
		if (session.getAttribute("useremail") == null) {
			response.sendRedirect("home.jsp");
		} else {

			cid = (String) session.getAttribute("customer_id");
			UserCartDao.fetchUserCart(cid);
			ArrayList<CartBean> cart1 = UserCartDao.cart;
	%>
	<center>
		<h1>
			<font color=red>Welcome to your cart</font>
		</h1>
		<h2>Products</h2>
	</center>
	<center>
		<form action="Order3.jsp">
			<table border=1>
				<tr>

					<th>Product ID</th>
					<th>PRODUCT NAME</th>
					<th>PRODUCT CATEGORY</th>
					<th>PRODUCT STATUS</th>
					<th>PRODUCT PRICE</th>
					<th>PRODUCT DESC</th>
					<th>Quantity</th>



				</tr>

				<%
					for (int j = 0; j < cart1.size(); j++) {
				%>
				<tr>
					<td><%=cart1.get(j).getPid()%></td>
					<td><%=cart1.get(j).getPname()%></td>
					<td><%=cart1.get(j).getPcat()%></td>
					<td><%=cart1.get(j).getPstatus()%></td>
					<td><%=cart1.get(j).getPrice()%></td>
					<td><%=cart1.get(j).getPdesc()%></td>


					<%
						String x = cart1.get(j).getPid();
					%>
					<td><select name=<%=cart1.get(j).getPid()%>>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
					</select></td>


				</tr>
				<%
					}
					}
				%>

			</table>

			<br> <input type="submit" value="Proceed">
		</form>

		<br> <br> <br> <a href="first.jsp" class="button">Back
			to home page</a>
	</center>

</body>
</html>