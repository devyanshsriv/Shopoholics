<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<ul class="nav nav-pills">
			<li class="active"><a href="http://localhost:8080/Frontend1/">SHOPOHOLICS</a></li>
		</ul>
	</div>
	<form:form class="form-horizontal" modelAttribute="user"
		action="regUser" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend>
				<h3>
					<center>
						<b>REGISTER</b>
					</center>
				</h3>
			</legend>
			<form:hidden path="role" />

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Name">User Name</label>
				<div class="col-md-4">
					<form:input id="Name" name="Name" path="name" type="text"
						placeholder="name" class="form-control input-md" required="" />
					<span class="help-block">Please enter full name</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Mobile">User
					Mobile</label>
				<div class="col-md-4">
					<form:input id="Mobile" name="Mobile" path="mobile" type="text"
						placeholder="mobile" class="form-control input-md" required="" />
					<span class="help-block">Enter mobile number</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Email">Email
					address</label>
				<div class="col-md-4">
					<form:input id="Email" name="Email" type="text" path="email"
						placeholder="email" class="form-control input-md" required="" />
					<span class="help-block">enter your email id</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Email">Address</label>
				<div class="col-md-4">
					<form:input id="address" name="address" type="text" path="address"
						placeholder="address" class="form-control input-md" required="" />
					<span class="help-block">Enter full address</span>
				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="passwordinput">Password
				</label>
				<div class="col-md-4">
					<form:input id="passwordinput" name="passwordinput" type="password"
						placeholder="" path="password" class="form-control input-md"
						required="" />
					<span class="help-block">enter password</span> <br> <br>
					<p>
						Already have a account? <a href="login">Sign In</a>
					</p>
				</div>
			</div>


			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Submit"></label>
				<div class="col-md-4">
					<button id="Submit" name="Submit" type="submit"
						class="btn btn-primary">Submit</button>
					<button id="Cancel" name="Cancel" class="btn btn-danger">Cancel</button>
					<a href="Showall" class="btn btn-info" role="button">Show
						Records</a>
				</div>
			</div>
		</fieldset>
	</form:form>
</body>
</html>