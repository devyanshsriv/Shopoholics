<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<spring:url value="/resources/Images" var="image" />
<spring:url value="/resources/js" var="js" />

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="resources/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/resources/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/resources/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/resources/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/resources/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->

<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<link rel="stylesheet" type="text/css"
	href="vendor/MagnificPopup/magnific-popup.css">

<!-- Latest compiled and minified CSS -->

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/resources/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/resources/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/resources/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script type="https://code.jquery.com/jquery-3.3.1.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/resources/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/resources/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- breadcrumb -->
	<!-- <div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index" class="stext-109 cl8 hov-cl1 trans-04"> Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <a href="product" class="stext-109 cl8 hov-cl1 trans-04">
				Men <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <span class="stext-109 cl4"> Lightweight Jacket </span>
		</div>
	</div>  -->


	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

							<div class="slick3 gallery-lb">
								<div class="" data-thumb="resources/images/product-detail-01.jpg">
									<div class="wrap-pic-w pos-relative col-lg-3">

										<img src="${image}/${product.code}/1.jpg" id="id_1"
											class="img-thumbnail" width="80" height="90" alt="no" />

										<!-- <a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="resources/images/product-detail-01.jpg"> <i
											class="fa fa-expand"></i>
										</a> -->
										<div class="" data-thumb="resources/images/product-detail-02.jpg">
											<div class="wrap-pic-w pos-relative">
												<img src="${image}/${product.code}/2.jpg" id="id_2"
													class="img-thumbnail" width="80" height="90"
													alt="IMG-PRODUCT" />

												<!-- <a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="resources/images/product-detail-03.jpg"> <i
											class="fa fa-expand"></i>
										</a> -->
											</div>
										</div>
										<div class="" data-thumb="resources/images/product-detail-03.jpg">
											<div class="wrap-pic-w pos-relative">
												<img src="${image}/${product.code}/3.jpg" id="id_3"
													class="img-thumbnail" width="80" height="90"
													alt="IMG-PRODUCT" />

												<!-- <a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="resources/images/product-detail-03.jpg"> <i
											class="fa fa-expand"></i>
										</a> -->
											</div>
										</div>

									</div>
									<div class="" data-thumb="resources/images/product-detail-01.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="${image}/${product.code}/1.jpg" id="bg"
												class="img-thumbnail" width="480" height="236"
												alt="IMG-PRODUCT" />

											<!-- <a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="resources/images/product-detail-02.jpg"> <i
											class="fa fa-expand"></i>
										</a> -->
										</div>

									</div>


								</div>



							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<table>
							<tr>
								<td><h3>
										<b>${product.name}</b>
									</h3></td>
							</tr>
							<%-- <tr><td>${product.description}</td></tr> --%>
							<tr>
								<td><h4>
										<b>Rs.${product.unitprice}</b>
									</h4></td>
							</tr>
							<tr>
								<td>Pay on Delivery eligible? <input type="text"
									style="width: 100px;" placeholder="Enter Pin Code" /> <input
									type="submit" value="Check" />

								</td>
							</tr>
						</table>

						<p class="stext-102 cl3 p-t-23">Nulla eget sem vitae eros
							pharetra viverra. Nam vitae luctus ligula. Mauris consequat
							ornare feugiat.</p>

						<!--  -->
						<div class="p-t-33">
							<!-- Select Basic -->
							<div class="row">
								<div class="form-group">
									<label class="col-md-2 control-label" for="selectbasic">Size</label>
									<div class="col-md-5">
										<select id="selectbasic" name="selectbasic"
											class="form-control">
											<option>Choose an option</option>
											<option value="1">Size M</option>
											<option value="2">Size L</option>
											<option value="3">Size XL</option>
											<option value="4">Size XXL</option>
										</select>
									</div>
								</div>
							</div>
							<br>

							<!-- Select Basic -->
							<div class="row">
								<div class="form-group">
									<label class="col-md-2 control-label" for="selectbasic">Color</label>
									<div class="col-md-5">
										<select id="selectbasic" name="selectbasic"
											class="form-control">
											<option>Choose color</option>
											<option value="1">Grey</option>
											<option value="2">Orange</option>
											<option value="3">Black</option>
											<option value="4">Red</option>
										</select>
									</div>
								</div>
							</div>
							<br> <a
								href="${pageContext.request.contextPath}/addToCart/${product.productid}?qty=1"
								class="btn btn-info"> <i class="fas fa-cart-plus"></i> Add
								to cart
							</a> <a href="${pageContext.request.contextPath}/usershow"
								class="btn btn-info"> <i class="fas fa-cart-plus"></i> Buy
								Now
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>

	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!--===============================================================================================-->
	<script src="${js}/jquery-3.3.1.js"></script>

	<script type="text/javascript">
		$(function() {
			$('#id_1').click(function(e) {
				e.preventDefault();
				$("#bg").attr('src', "${image}/${product.code}/1.jpg");
			});
			$('#id_2').click(function(e) {
				e.preventDefault();
				$("#bg").attr('src', "${image}/${product.code}/2.jpg");
			});
			$('#id_3').click(function(e) {
				e.preventDefault();
				$("#bg").attr('src', "${image}/${product.code}/3.jpg");
			});
		});
	</script>




	<!--===============================================================================================-->
	<script src="vendor/animsition/resources/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/resources/js/popper.js"></script>
	<script src="vendor/bootstrap/resources/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="resources/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
			e.preventDefault();
		});
		$('.js-addwish-b2').each(
				function() {
					var nameProduct = $(this).parent().parent().find(
							'.js-name-b2')();
					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");
						$(this).addClass('js-addedwish-b2');
						$(this).off('click');
					});
				});
		$('.js-addwish-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.js-name-detail')();
					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");
						$(this).addClass('js-addedwish-detail');
						$(this).off('click');
					});
				});
		/*---------------------------------------------*/
		$('.js-addcart-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent()
							.parent().find('.js-name-detail')();
					$(this).on('click', function() {
						swal(nameProduct, "is added to cart !", "success");
					});
				});
	</script>
	<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});
			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>


</body>
</html>