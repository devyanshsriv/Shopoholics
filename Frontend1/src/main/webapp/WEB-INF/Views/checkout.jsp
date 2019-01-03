<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="invoice-title">
				<h2>Invoice</h2>
				<h3 class="pull-right">Order # 12345</h3>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-6">

					<address>
						<strong>Billed To:</strong><br> ${user.name}<br>
						${user.address}<br> ${user.mobile}<br>
					</address>
				</div>
				<div class="col-xs-6 text-right">
					<address>
						<strong>Shipped To:</strong><br> ${user.name}<br>
						${user.address}<br>
					</address>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6">
					<address>
						<strong>Payment Method:</strong>
						<%-- ${user.email} --%>
					</address>
				</div>
				<div class="col-xs-6 text-right">
					<address>
						<strong>Order Date:</strong><br>
						<%
							Date date = new Date();
							out.print("<h5 align = \"\">" + date.toString() + "</h5>");
						%><br>
					</address>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						<strong>Order summary</strong>
					</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table">
							<thead class="thead-dark">

								<tr>
									<td><strong>Item</strong></td>

									<th scope="col">Price</th>
									<th scope="col">Quantity</th>
									<th scope="col">total</th>

								</tr>
							</thead>

							<c:forEach items="${cart}" var="cart">
								<div class="how-itemcart1">
									<tr>
										<td class="column-2">${cart.product.name}</td>
										<td class="column-3">Rs.${cart.product.unitprice}</td>
										<td class="column-4">${cart.productCount}</td>
										<td class="column-5">Rs.${cart.total}</td>


									</tr>
								</div>
							</c:forEach>

							<tr>
								<td class="no-line"></td>
								<td class="no-line"></td>
								<td class="no-line text-center"><strong>Shipping</strong></td>
								<td class="no-line text-right">Rs.50</td>
							</tr>
							<tr>
								<td class="no-line"></td>
								<td class="no-line"></td>
								<td class="no-line text-center"><strong>Total</strong></td>
								<td class="no-line text-right">Rs.${total}</td>
							</tr>


						</table>
					</div>
				</div>
			</div>
			<!-- Button (Double)-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="button1id"></label>
				<div class="col-md-8">
					<a href="http://localhost:8080/Frontend1/" class="btn btn-primary">Continue
						Shopping</a>
				</div>
			</div>
		</div>