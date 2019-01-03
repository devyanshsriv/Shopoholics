<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form:form class="form-horizontal" modelAttribute="product"
		action="${pageContext.request.contextPath}/manage/updateProd"
		method="post" enctype="multipart/form-data">
		<fieldset>
			<form:hidden path="productid" />
			<!-- Form Name -->
			<legend>EDIT PRODUCT</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Supplier
					ID</label>
				<div class="col-md-8">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="supplierid" />
					<span class="help-block">Enter your ID</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Product
					Name</label>
				<div class="col-md-8">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="name" />
					<span class="help-block">Enter product name</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Quantity</label>
				<div class="col-md-8">
					<form:input id="textinput" path="quantity" name="textinput"
						type="text" placeholder="" class="form-control input-md"
						required="" />
					<span class="help-block">Enter number of pieces</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Price</label>
				<div class="col-md-8">
					<form:input id="textinput" path="unitprice" name="textinput"
						type="text" placeholder="" class="form-control input-md"
						required="" />
					<span class="help-block">Enter product price</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Category
				</label>
				<div class="col-md-8">
					<form:select path="categoryid" items="${catlist}"
						itemLabel="categoryName" itemValue="categoryId" />
					<span class="help-block">Category of product</span>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Upload
					Image</label>
				<div class="col-md-8">
					<input type="file" name="file1" /> 
					<input type="file" name="file2" />
					<input type="file" name="file3" />
				</div>
			</div>


			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Submit"></label>
				<div class="col-md-8">
					<button id="Submit" name="Submit" class="btn btn-success">Submit</button>
					<button id="Reset" name="Reset" class="btn btn-danger">Reset</button>
				</div>
			</div>


		</fieldset>
	</form:form>


</body>
</html>