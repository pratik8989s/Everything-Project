<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product-Soft Cart</title>
<link rel="stylesheet" type="text/css" href="common.css">
<%@include file="header.jsp"%>

</head>

<body id="addimage">
	<%
		if (session.getAttribute("adminemail") == null) {
			response.sendRedirect("home.jsp");
		} else {
	%>
	<center>
		<h2>ADD PRODUCTS TO DATABASE</h2>
	</center>
	<form method="post" action="ShoppingController" name="myacc">
		<center>
			<div>
				<table cellspacing="5">
					<tr>
						<td>Product Name:</td>
						<br>
						<td><input type="text" name="name" size="35" id="name" /><br>
							<br></td>
					</tr>
					<tr>
						<td>Product Category:</td>
						<!--  <td><input type="text" name="prodcategory" size="35">-->
						<td><select name="prodcategory">
 <option value="UnKnown">Select the Category</option>
								<option value="Textiles">Textiles</option>
								<option value="Electronics">Electronics</option>
								<option value="Books">Books</option>
								<option value="Watches">Watches</option>
								<option value="Sports">Sports</option>
								<option value="Stationery">Stationery</option>
						</select> <br> <br></td>
					</tr>
					<tr>
						<td>Product Status:</td>
						<td>
							<!--  <input type="text" name="status" id="status" size="35">-->
							<select name="status">
								<option value="InStock">InStock</option>
								<option value="OutOfStock">Out of Stock</option>
						</select> <br> <br>
						</td>
					</tr>
					<tr>
						<td>Product Price:</td>
						<td><input type="number" name="price" size="35" id="price" /><br>
							<br></td>
					</tr>
					<tr>
						<td>Product Description:</td>
						<td><textarea name="pdesc" rows="5" size="35"></textarea><br>
							<br></td>
					</tr>

				</table>
			</div>
		</center>
		<center>
			<input type="submit" class="button" value="Add Product" id="submit">
		</center>
		<input type="hidden" value="add" name="category" />
	</form>
	<%
		}
	%>
<%@ include file="footerhome.jsp"%>
</body>
</html>