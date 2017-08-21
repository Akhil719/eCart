<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; cha`et=utf-8" />

<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap.css"/>">
<script src="<c:url value="resources/js/jquery.min.js"/>"></script>
<style>
body {
	margin-top: 50px;
	padding-top: 50px;
}
</style>
<title>My Cart - CheckOut</title>
</head>
<body style="background-color: #e6ffff">
	<jsp:include page="header-3.jsp" />
	<br>&nbsp;
	<div class="container" style="background-color: #ccffff; box-shadow: 10px 10px 5px #888888;">
		<h1 style="color: #004d13; text-align: center;">REVIEW ORDER</h1>
		<c:if test="${!empty cartList}">
			<div class="panel-heading" style="background-color: #f5f5f5">
				<div class="row">
					<div class="col-xs-9">
						<h4>
							<span class="glyphicon glyphicon-shopping-cart"></span> Shopping
							Cart
						</h4>
					</div>
					<div class="col-xs-3"></div>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-3"></div>
				<div class="col-xs-1">
					<h5 style="text-align: center;">Image</h5>
				</div>
				<div class="col-xs-3">
					<h5 style="text-align: left;">Product Name</h5>
				</div>
				<div class="col-xs-1">
					<h5 style="text-align: center;">Quantity</h5>
				</div>
				<div class="col-xs-1">
					<h5 style="text-align: center;">Price</h5>
				</div>
				<div class="col-xs-3"></div>
			</div>
			<c:forEach items="${cartList}" var="cart">
				<div class="row">
					<div class="col-xs-3"></div>
					<div class="col-xs-1">
						<p style="text-align: center;">
							<img style="width: 50px; height: 50px;"
								src="<c:url value="/resources/images/${cart.product_id}.jpg"/>" />
						</p>
					</div>
					<div class="col-xs-3">
						<strong>${cart.product_name}</strong>
					</div>
					<div class="col-xs-1">
						<p style="text-align: center;">
							<strong>${cart.quantity}</strong>
						</p>
					</div>
					<div class="col-xs-1">
						<p style="text-align: center;">
							<strong>&#8377.${cart.price}/-</strong>
						</p>
					</div>
					<div class="col-xs-3"></div>
				</div>
				<hr>
			</c:forEach>

			<div class="panel-footer">
				<div class="row text-center">
					<div class="col-xs-3"><a href="myCart" type="button"
						class="btn btn-success btn-lg btn-block"> <span
						class="glyphicon glyphicon glyphicon-arrow-left"></span> Edit Cart
					</a></div>
					<div class="col-xs-6">
						<h4 class="text-right">Total: &#8377. ${sum}/-</h4>
					</div>
					<div class="col-xs-3">
						<a href="payment" type="button"
							class="btn btn-success btn-lg btn-block"> CONFIRM ORDER </a>
					</div>
				</div>
			</div>
			<hr>
		</c:if>
	</div>
</body>
</html>