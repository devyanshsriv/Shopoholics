<html>
<head>
<!-- //tags -->
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel="stylesheet" href="resources/css/flexslider.css"
	type="text/css" media="screen" />

<!-- //for bootstrap working -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<%@include file="./shared/Header.jsp"%>
	<!--/single_page-->
	<!-- /banner_bottom_agile_info -->
	<div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>
				Single <span>Page </span>
			</h3>
			<!--/w3_short-->
			<div class="services-breadcrumb">
				<div class="agile_inner_breadcrumb">

					<ul class="w3_short">
						<li><a href="http://localhost:8080/Frontend1/">Home</a><i>|</i></li>
						<li>Single Page</li>
					</ul>
				</div>
			</div>
			<!--//w3_short-->
		</div>
	</div>

	<!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
		<div class="container">
			<div class="col-md-4 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">

						<ul class="slides">
							<li data-thumb="resources/images/d2.jpg">
								<div class="thumb-image">
									<img src="resources/images/d2.jpg" data-imagezoom="true"
										class="img-responsive">
								</div>
							</li>
							<li data-thumb="resources/images/d1.jpg">
								<div class="thumb-image">
									<img src="resources/images/d1.jpg" data-imagezoom="true"
										class="img-responsive">
								</div>
							</li>
							<li data-thumb="resources/images/d3.jpg">
								<div class="thumb-image">
									<img src="resources/images/d3.jpg" data-imagezoom="true"
										class="img-responsive">
								</div>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="col-md-8 single-right-left simpleCart_shelfItem">
				<h3>${product.name}</h3>
				<p>
					<span class="item_price">Rs.${product.unitprice}</span>
				</p>
				<div class="rating1">
					<span class="starRating"> <input id="rating5" type="radio"
						name="rating" value="5"> <label for="rating5">5</label> <input
						id="rating4" type="radio" name="rating" value="4"> <label
						for="rating4">4</label> <input id="rating3" type="radio"
						name="rating" value="3" checked=""> <label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label> <input id="rating1" type="radio"
						name="rating" value="1"> <label for="rating1">1</label>
					</span>
				</div>
				<div class="description">
					<h5>Check delivery, payment options and charges at your
						location</h5>
					<form action="#" method="post">
						<input type="text" value="Enter pincode"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Enter pincode';}"
							required=""> <input type="submit" value="Check">
					</form>
				</div>
				<div class="color-quality">
					<div class="color-quality-right">
						<h5>Quality :</h5>
						<select id="country1" onchange="change_country(this.value)"
							class="frm-field required sect">
							<option value="null">5 Qty</option>
							<option value="null">6 Qty</option>
							<option value="null">7 Qty</option>
							<option value="null">10 Qty</option>
						</select>
					</div>
				</div>
				<div class="occasion-cart">
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="business" value=" "> <input
									type="hidden" name="item_name" value="Wing Sneakers"> <input
									type="hidden" name="amount" value="650.00"> <input
									type="hidden" name="discount_amount" value="1.00"> <input
									type="hidden" name="currency_code" value="USD"> <input
									type="hidden" name="return" value=" "> <input
									type="hidden" name="cancel_return" value=" "> <input
									type="submit" name="submit" value="Add to cart" class="button">
							</fieldset>
						</form>
					</div>

				</div>

				<ul
					class="social-nav model-3d-0 footer-social w3_agile_social single_page_w3ls">
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
			<!-- /new_arrivals -->


			<!-- single -->
			<script src="resources/resources/js/imagezoom.js"></script>
			<!-- FlexSlider -->
			<script src="resources/js/jquery.flexslider.js"></script>
			<script>
				// Can also be used with $(document).ready()
				$(window).load(function() {
					$('.flexslider').flexslider({
						animation : "slide",
						controlNav : "thumbnails"
					});
				});
			</script>
			<!-- //FlexSlider-->
			<!-- for bootstrap working -->
			<script type="text/javascript" src="resources/js/bootstrap.js"></script>

			<%@include file="./shared/footer.jsp"%>