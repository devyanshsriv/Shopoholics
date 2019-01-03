<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<link href="resources/css/team.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resources/css/font-awesome.css" rel="stylesheet">
<!-- //for bootstrap working -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@include file="./shared/Header.jsp"%>

	<div class="row">
		<div class="col-lg-3">
			<fieldset>

				<!-- Multiple Checkboxes (inline) -->
				<div class="form-group">
					<label class="col-md-4 control-label">Category:</label><br>
					<div class="list-grop-item">
						<div id="filter-group3">
							<c:forEach items="${catList}" var="cat">
								<br>
								<a class="a-filter add-filter nav-link"
									href="${pageContext.request.contextPath}/viewCategory/${cat.categoryId}"
									id="cat_${cat.categoryId}">${cat.categoryName}</a>
							</c:forEach>
						</div>

					</div>

				</div>
			</fieldset>
			<fieldset>
				<div class="form-group">
					<label class="col-md-4 control-label">Price:</label><br>
				</div>
			</fieldset>
			<fieldset>

				<form class="form-inline"
					action="${pageContext.request.contextPath}/filter" method="post">

					<div class="form-group">
						<input id="textinput" name="min" type="text" style="width: 70px"
							placeholder="Min" class="form-control input-sm"> <input
							id="textinput" name="max" type="text" placeholder="Max"
							style="width: 70px" class="form-control input-sm">

						<button type="submit" id="singlebutton" name="singlebutton"
							class="btn btn-success">Go</button>
					</div>
				</form>
			</fieldset>
		</div>

		<div class="col-lg-8">
			<c:set var="count" value="0" />
			<div class="container">
				<div class="row">
					<div class="column">
						<table id="tab">
							<tr id="tablerow">
								<c:forEach items="${prodlist}" var="pro">
									<c:set var="count" value="${count+1}" />
									<td><a
										href="${pageContext.request.contextPath}/viewProduct/${pro.productid}"><img
											src="${pageContext.request.contextPath}/resources/Image/${pro.code}/1.jpg"
											height="200px" width="200px" /></a> <br>
										<h4 style="display: inline block">${pro.name}<br>
											Price: Rs.${pro.unitprice}
										</h4> <br>
										<div class="form-group">
											<label class="col-md-4 control-label" for="singlebutton"></label>
											<div class="col-md-4">
												<a
													href="${pageContext.request.contextPath}/addToCart/${pro.productid}?qty=1"
													class="btn btn-info"> <i class="fas fa-cart-plus"></i>
													Add to cart
												</a>
											</div>
										</div></td>
									<c:if test="${count%4==0}">

										<tr id="tablerow">
									</c:if>
								</c:forEach>
							</tr>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- js -->
	<script type="text/javascript" src="resources/js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- cart-js -->
	<script src="resources/js/minicart.min.js"></script>
	<script>
		// Mini Cart
		paypal.minicart.render({
			action : '#'
		});

		if (~window.location.search.indexOf('reset=true')) {
			paypal.minicart.reset();
		}
	</script>

	<!-- //cart-js -->

	<!-- stats -->
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="resources/js/move-top.js"></script>
	<script type="text/javascript" src="resources/js/jquery.easing.min.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->

	<!-- for bootstrap working -->
	<script type="text/javascript" src="resources/js/bootstrap.js"></script>

</body>
</html>