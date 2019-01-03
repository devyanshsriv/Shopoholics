<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<!-- <div class="container">
		<ul class="nav nav-pills">
			<li class="active"><a href="http://localhost:8080/Frontend1/">SHOPOHOLICS</a></li>

		</ul>
	</div> -->

	<%@include file="./shared/Header.jsp"%>
	<br>
	<br>
	<h1>
		<center>Shoping Cart</center>
	</h1>
	<br>
	<!-- Shoping Cart -->
	<div class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table">
								<thead class="thead-dark">

									<tr>
										<th scope="col">Product</th>
										<th scope="col">Product Name</th>
										<th scope="col">Price</th>
										<th scope="col">Quantity</th>
										<th class="column-5">Total</th>
										<th class="column-5">Action</th>
									</tr>
								</thead>

								<c:forEach items="${cartlist}" var="cart">
									<div class="how-itemcart1">

										<tr>

											<td><img
												src="${pageContext.request.contextPath}/resources/Image/${cart.product.code}/1.jpg"
												height="200" width="200" /></td>
											<td class="column-2">${cart.product.name}</td>
											<td class="column-3">Rs.${cart.product.unitprice}</td>
											<td class="column-4">
												<form
													action="${pageContext.request.contextPath}/updatecart/${cart.product.productid}">
													<input type="number" max="5" min="1" name="qty"
														value="${cart.productCount}" size="10px" />
													<button type="submit" class="btn btn-info">
														<span class="fas fa-sync"></span>
													</button>
												</form>
											</td>
											<td class="column-5">Rs.${cart.total}</td>
											<td><a
												href="${pageContext.request.contextPath}/remove/${cart.id}"
												class="btn btn-danger fas fa-trash-alt"></a></td>

										</tr>

									</div>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>

				<div class="col-sm-20 col-lg-4 col-xl-5 m-lr-auto m-b-50"
					style="background-color: #4dffa6">
					<div
						class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<br> <br> <br>

						<h4 class="mtext-109 cl2 p-b-30">
							<font color="Black"><b>Price Details</b></font>
						</h4>
						<hr
							style="height: 1px; border: none; color: #333; background-color: #333;" />


						<div class="flex-w flex-t p-t-27 p-b-33">

							<div class="size-208">
								<span class="mtext-101 cl2"> Items: ${size}</span>
							</div>
							<br>
							<div class="size-208">
								<span class="mtext-101 cl2"> Amount Payable:
									Rs.${grandTotal} </span>
							</div>
						</div>
						<br> <a href="${pageContext.request.contextPath}/usershow"
							class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							Place Order<span class="glyphicon glyphicon-shopping-cart">
								${size}</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<a></a>
	</div>
	<%@include file="./shared/footer.jsp"%>