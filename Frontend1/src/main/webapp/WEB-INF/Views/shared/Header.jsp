<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
<head>
<title>Ecommerce Website:Shopoholics</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Elite Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 






















</script>
<!--//tags -->
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resources/css/font-awesome.css" rel="stylesheet">
<link href="resources/css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
<!-- //for bootstrap working -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="container">
			<ul>
				<c:if test="${user.name==null}">
					<li><a href="#" data-toggle="modal" data-target="#myModal"><i
							class="fa fa-unlock-alt" aria-hidden="true"></i> Sign In </a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal2"><i
							class="fa fa-pencil-square-o" aria-hidden="true"></i> Sign Up </a></li>
				</c:if>
				<c:if test="${user.name!=null}">

					<li class="dropdown"><a class=" dropdown-toggle" type="button"
						data-toggle="dropdown" href="#">Welcome <c:if
								test="${user.role=='ROLE_ADMIN'}">ADMIN</c:if> 
								<c:if
								test="${user.role=='ROLE_USER'}">${user.name}</c:if> <span
							class="caret"></span>
					</a>
						<ul class="dropdown-menu">

							<li><a href="perform_logout"><span
									class="fas fa-sign-out-alt"></span> Logout</a></li>
						</ul></li>
				</c:if>
				<li><i class="fa fa-phone" aria-hidden="true"></i> Call :
					01234567898</li>
				<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a
					href="mailto:info@example.com">info@example.com</a></li>
			</ul>
		</div>
	</div>
	<!-- //header -->
	<!-- header-bot -->
	<div class="header-bot">
		<div class="header-bot_inner_wthreeinfo_header_mid">
			<div class="col-md-4 header-middle">
				<form action="#" method="post">
					<input type="search" name="search" placeholder="Search here..."
						required=""> <input type="submit" value=" ">
					<div class="clearfix"></div>
				</form>
			</div>
			<!-- header-bot -->
			<div class="col-md-4 logo_agile">
				<h1>
					<a href="index"><span>S</span>hopoholics <i
						class="fa fa-shopping-bag top_logo_agile_bag" aria-hidden="true"></i></a>
				</h1>
			</div>
			<!-- header-bot -->
			<div class="col-md-4 agileits-social top_content">
				<ul class="social-nav model-3d-0 footer-social w3_agile_social">
					<li class="share">Share On :</li>
					<li><a href="#" class="facebook">
							<div class="front">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="twitter">
							<div class="front">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="instagram">
							<div class="front">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="pinterest">
							<div class="front">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</div>
					</a></li>
				</ul>



			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header-bot -->
	<!-- banner -->
	<div class="ban-top">
		<div class="container">
			<div class="top_nav_left">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse menu--shylock"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav menu__list">
								<li class="active menu__item menu__item--current"><a
									class="menu__link" href="http://localhost:8080/Frontend1/">Home
										<span class="sr-only">(current)</span>
								</a></li>
								<li class=" menu__item"><a class="menu__link" href="about">About</a></li>
								<li class=" menu__item"><a class="menu__link" href="mens">Men's
										Wear</a></li>
								<li class=" menu__item"><a class="menu__link" href="womens">Women's
										Wear</a></li>
								<c:if test="${user.role=='ROLE_ADMIN'}">
									<li class="menu__item dropdown"><a class="menu__link"
										href="#" class="dropdown-toggle" data-toggle="dropdown">Manage
											<b class="caret"></b>
									</a>
										<ul class="dropdown-menu agile_short_dropdown">
											<li><a
												href="${pageContext.request.contextPath}/manage/ProductRegister">Product</a></li>
											<li><a
												href="${pageContext.request.contextPath}/manage/CategoryRegister">Category</a></li>
											<li><a
												href="${pageContext.request.contextPath}/manage/SupplierRegister">Supplier</a></li>
											<li><a
												href="${pageContext.request.contextPath}/user/Register">User</a></li>
											<li><a href="${pageContext.request.contextPath}/new">NEW</a></li>

										</ul></li>
								</c:if>
								<li class=" menu__item"><a class="menu__link"
									href="${pageContext.request.contextPath}/ViewProduct">All
										Products</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
			<div class="top_nav_right">
				<a href="${pageContext.request.contextPath}/ShoppingCart"
					class="btn btn-lg btn-default"><span
					class="glyphicon glyphicon-shopping-cart"> ${size}</span></a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //banner-top -->
	<!-- Modal1 -->
<body onload='document.loginForm.username.focus();'>

	<c:if test="${not empty error}">
		<div class="error">${error}</div>
	</c:if>
	<c:if test="${not empty msg}">
		<div class="msg">${msg}</div>
	</c:if>
	<form action="perform_login" name='loginForm' method="post">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body modal-body-sub_agile">
						<div class="col-md-8 modal_body_left modal_body_left1">
							<h3 class="agileinfo_sign">
								Sign In <span>Now</span>
							</h3>

							<div class="styled-input agile-styled-input-top">
								<input id="textinput" type="email" name="username" required="">
								<label>Email</label> <span></span>
							</div>
							<div class="styled-input">
								<input id="passwordinput" type="password" name="password"
									required=""> <label>Password</label> <span></span>
							</div>
							<input type="submit" value="Sign In">

							<ul
								class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
								<li><a href="#" class="facebook">
										<div class="front">
											<i class="fa fa-facebook" aria-hidden="true"></i>
										</div>
										<div class="back">
											<i class="fa fa-facebook" aria-hidden="true"></i>
										</div>
								</a></li>
								<li><a href="#" class="twitter">
										<div class="front">
											<i class="fa fa-twitter" aria-hidden="true"></i>
										</div>
										<div class="back">
											<i class="fa fa-twitter" aria-hidden="true"></i>
										</div>
								</a></li>
								<li><a href="#" class="instagram">
										<div class="front">
											<i class="fa fa-instagram" aria-hidden="true"></i>
										</div>
										<div class="back">
											<i class="fa fa-instagram" aria-hidden="true"></i>
										</div>
								</a></li>
								<li><a href="#" class="pinterest">
										<div class="front">
											<i class="fa fa-linkedin" aria-hidden="true"></i>
										</div>
										<div class="back">
											<i class="fa fa-linkedin" aria-hidden="true"></i>
										</div>
								</a></li>
							</ul>
							<div class="clearfix"></div>
							<p>
								<a href="#" data-toggle="modal" data-target="#myModal2">
									Don't have an account?</a>
							</p>

						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<img src="resources/images/log_pic.jpg" alt=" " />
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- //Modal content-->
			</div>
		</div>
	</form>
	<!-- //Modal1 -->
	<!-- Modal2 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">
							Sign Up <span>Now</span>
						</h3>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required=""> <label>Name</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required=""> <label>Email</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="password" required=""> <label>Password</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="Confirm Password" required="">
								<label>Confirm Password</label> <span></span>
							</div>
							<input type="submit" value="Sign Up">
						</form>
						<ul
							class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
							<li><a href="#" class="facebook">
									<div class="front">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="twitter">
									<div class="front">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="instagram">
									<div class="front">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="pinterest">
									<div class="front">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
							</a></li>
						</ul>
						<div class="clearfix"></div>
						<p>
							<a href="#">By clicking register, I agree to your terms</a>
						</p>

					</div>
					<div class="col-md-4 modal_body_right modal_body_right1">
						<img src="images/log_pic.jpg" alt=" " />
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal2 -->