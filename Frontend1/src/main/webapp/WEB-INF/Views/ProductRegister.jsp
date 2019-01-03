<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<title>Product Registration</title>
</head>
<body>

	<div class="container">
		<ul class="nav nav-pills">
			<li class="active"><a href="http://localhost:8080/Frontend1/">SHOPOHOLICS</a></li>
			<li><a
				href="${pageContext.request.contextPath}/manage/ProductRegister">Product</a></li>
			<li><a
				href="${pageContext.request.contextPath}/manage/CategoryRegister">Category</a></li>
			<li><a
				href="${pageContext.request.contextPath}/manage/SupplierRegister">Supplier</a></li>
		</ul>
	</div>

	<form:form class="form-horizontal" modelAttribute="product"
		action="regProd" method="post" enctype="multipart/form-data">
		<fieldset>

			<!-- Form Name -->
			<center>
				<legend>PRODUCT REGISTRATION</legend>
			</center>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Supplier
					Id </label>
				<div class="col-md-5">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" path="supplierid" class="form-control input-md"
						required="" />

				</div>
			</div>


			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Product
					Name</label>
				<div class="col-md-5">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" path="name" class="form-control input-md"
						required="" />

				</div>
			</div>


			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Unit
					Price</label>
				<div class="col-md-5">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" path="unitprice" class="form-control input-md"
						required="" />

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Quantity</label>
				<div class="col-md-5">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" path="quantity" class="form-control input-md"
						required="" />

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Category</label>
				<div class="col-md-5">
					<form:select path="categoryid" items="${catlist}"
						itemLabel="categoryName" itemValue="categoryId" />
					<span class="help-block"> Category of Product</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Active</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path="active" />
				</div>
			</div>

			<!-- File Button !-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Upload">Upload</label>
				<div class="col-md-4">
					<input id="Upload1" name="file1" class="input-file" type="file" />
					<input id="Upload2" name="file2" class="input-file" type="file" />
					<input id="Upload3" name="file3" class="input-file" type="file" />
				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for=""></label>
				<div class="col-md-4">
					<button id="" name="" class="btn btn-primary">Submit</button>
					<button id="" name="" class="btn btn-danger">Reset</button>
				</div>
			</div>
		</fieldset>
	</form:form>

	<table class="table table-hover" border="10">
		<thead>
			<tr>
				<th>Image</th>
				<th>Product ID</th>
				<th>Category ID</th>
				<th>Supplier ID</th>
				<!--  <th>Description</th> -->
				<th>Name</th>
				<th>Price</th>
				<th>Stock</th>
				<th>Action</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${prodlist}" var="pro">
				<tr>
					<td><img
						src="${pageContext.request.contextPath}/resources/Image/${pro.code}/1.jpg"
						height="200px" width="200px" /></td>
					<td>${pro.productid}</td>
					<td>${pro.categoryid}</td>
					<td>${pro.supplierid}</td>
					<%-- <td>${pro.description}</td> --%>
					<td>${pro.name}</td>
					<td>${pro.unitprice}</td>
					<td>${pro.quantity}</td>
					
					<td><a href="updateProduct/${pro.productid}"
						class="fas fa-edit btn btn-primary"></a> <a href="deleteProd/${pro.productid}"
						class="fas fa-trash-alt btn btn-danger"></a></td>

				</tr>
			</c:forEach>

			
		</tbody>
	</table>


</body>
</html>