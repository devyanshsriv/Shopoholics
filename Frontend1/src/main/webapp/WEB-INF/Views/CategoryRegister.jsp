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

<script type="https://code.jquery.com/jquery-3.3.1.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

<form:form class="form-horizontal" modelAttribute="category"
		action="catReg" method="post">
		<fieldset>
			<!-- Form Name -->
			<center>
				<legend>CATEGORY REGISTRATION</legend>
			</center>


			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Category
					Name</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="categoryName" />
					<span class="help-block">Enter Category Name</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Description</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="description" />
					<span class="help-block">Enter small description</span>
				</div>
			</div>


			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Submit"></label>
				<div class="col-md-4">
					<button id="Submit" name="Submit" class="btn btn-success">Submit</button>
					<button id="Reset" name="Reset" class="btn btn-danger">Reset</button>
				</div>
			</div>


		</fieldset>
	</form:form>
	
	<table class="table table-hover" border="10">
		<thead>
			<tr>
				<th>Category ID</th>
				<th>Category Name</th>
				<th>Description</th>
				<th>Update</th>
				<th>Delete</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${catlist}" var="cat">
				<tr>
					<td>${cat.categoryId}</td>
					<td>${cat.categoryName}</td>
					<td>${cat.description}</td>

					<td><a href="catEdit/${cat.categoryId}"
						class="fas fa-edit btn btn-info"></a></td>
					<td><a href="deleteCat/${cat.categoryId}"
						class="fas fa-trash-alt btn btn-danger"></a></td>

				</tr>
			</c:forEach>

		</tbody>
	</table>

</body>
</html>