<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<section>
			<div class="wizard">

				<div class="tab-content">
					<div class="tab-pane active" role="tabpanel" id="step1">
						<div class="step1">
							<!--  exiting customer end -->
							<div class="row" style="">


								<center>
									<h2>
										<b>User Show</b>
									</h2>
								</center>

								<hr
									style="height: 1px; border: none; color: #333; background-color: #333;" />

								<form:form modelAttribute="user" action="billing" method="POST"
									role="form">
									<form:hidden path="userid" />
									<form:hidden path="role" />
									<div class="row">
										<h3>Select a Delivery Address</h3>
										<div class="checkout_details">
											<div class="col-sm-6 col-sm-offset-3">
												<dl class="dl-horizontal">
													<dt>
														Full Name:<span></span>
													</dt>
													<dd>${user.name}</dd>
												</dl>
											</div>
											<div class="col-sm-6 col-sm-offset-3">
												<dl class="dl-horizontal">
													<dt>
														Mobile Number:<span></span>
													</dt>
													<dd>${user.mobile}</dd>
												</dl>
											</div>
											<div class="col-sm-6 col-sm-offset-3">
												<dl class="dl-horizontal">
													<dt>
														Email:<span></span>
													</dt>
													<dd>${user.email}</dd>
												</dl>
											</div>
											<div class="col-sm-6 col-sm-offset-3">
												<dl class="dl-horizontal">
													<dt>
														Address:<span></span>
													</dt>
													<dd>${user.address}</dd>
												</dl>
											</div>
										</div>
										<!-- Button -->

										<div class="form-group">
											<label class="col-md-4 control-label" for="singlebutton"></label>
											<div class="col-md-4">
												<button id="singlebutton" name="singlebutton" type="submit"
													class="btn btn-warning">Deliver to this address</button>
											</div>
										</div>

										<div class="col-md-4">
											<form:hidden path="password" />
										</div>

										<!-- Button (Double) -->
										<div class="row">
											<div class="form-group">
												<label class="col-md-4 control-label" for="button1id"></label>
												<div class="col-md-4">
													<button id="button1id" name="button1id"
														class="btn btn-default">Edit</button>
													<button id="button2id" name="button2id"
														class="btn btn-default">Delete</button>
												</div>
											</div>

										</div>

									</div>
								</form:form>


								<hr
									style="height: 1px; border: none; color: #333; background-color: #333;" />
								<form:form modelAttribute="user" action="billing" method="POST"
									role="form">
									<form:hidden path="userid" />
									<form:hidden path="role" />

									<fieldset>

										<div class="row">
											<h3>Add a New Address</h3>
											<div class="row">
												<div class="col-md-6">
													<label for="exampleInputEmail1">Full Name</label>
													<form:input type="text" class="form-control" path="name"
														id="textinput" placeholder="First Name" required="" />
												</div>
												<div class="col-md-6">
													<label for="exampleInputEmail1">Mobile Number</label>
													<form:input type="number" class="form-control"
														path="mobile" id="textinput" placeholder="mobile" />
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<label for="exampleInputEmail1">Pincode</label>
													<form:input type="text" class="form-control" path="pincode"
														id="textinput" placeholder="Pincode" />
												</div>
												<div class="col-md-6">
													<label for="exampleInputEmail1">Email address</label>
													<form:input type="text" class="form-control" path="email"
														id="textinput" placeholder="Email" />
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<label for="exampleInputEmail1">Address</label>
													<form:input type="text" class="form-control" path="address"
														id="textinput" placeholder="Flat/Building" />
												</div>
												<div class="col-md-6">
													<label for="exampleInputEmail1">Landmark</label>
													<form:input type="text" class="form-control"
														path="landmark" id="textinput"
														placeholder="Near BBD College" />
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<label for="exampleInputEmail1">Town/City</label>
													<form:input type="text" class="form-control" path="city"
														id="exampleInputEmail1" placeholder="City" />
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<form:hidden path="password" />
										</div>
										<div class="row">
											<label class="col-md-4 control-label" for="singlebutton"></label>
											<div class="col-md-4">
												<button id="singlebutton" name="singlebutton" type="submit"
													class="btn btn-primary">SUBMIT</button>
											</div>
										</div>
									</fieldset>
								</form:form>
							</div>


						</div>

					</div>
			</section>
		</div>
	</div>

</body>
</html>