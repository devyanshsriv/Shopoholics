<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
	function myFunction() {
		var x = document.getElementById("passwordinput");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
	}
</script>
<style>
.error, .msg {
	color: red;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload='document.loginForm.username.focus();'>

	<div class="container">
		<ul class="nav nav-pills">
			<li class="active"><a href="http://localhost:8080/Frontend1/">SHOPOHOLICS</a></li>
		</ul>
	</div>
	<form class="form-horizontal" name='loginForm'
		action="${pageContext.request.contextPath}/perform_login"
		method='POST'>
		<fieldset>

			<!-- Form Name -->
			<legend>
				<h3>
					<center>
						<b>Login/Sign Up</b>
					</center>
				</h3>
			</legend>

			<center>
				<h3>
					<c:if test="${not empty error}">
						<div class="error">${error}</div>
					</c:if>
					<c:if test="${not empty msg}">
						<div class="msg">${msg}</div>
					</c:if>
				</h3>
			</center>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="username">E-Mail
					ID</label>
				<div class="col-md-4">
					<input id="textinput" name="username" type="text"
						placeholder="Enter your email as login id"
						class="form-control input-md" required="">
				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="password">Password
				</label>
				<div class="col-md-4">
					<input id="passwordinput" name="password" type="password"
						placeholder="Enter password" class="form-control input-md">
					<input type="checkbox" onclick="myFunction()">Show Password
				</div>
			</div>


			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="singlebutton"></label>
				<div class="col-md-4">
					<button id="singlebutton" name="singlebutton"
						class="btn btn-primary">login</button>
					<br> <br>
					<p>
						New Customer? <a href="Register">Sign Up</a>
					</p>
				</div>
			</div>

		</fieldset>
	</form>
</body>
</html>