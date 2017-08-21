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
	margin-top: 100px;
	padding-top: 100px;
}
</style>
<title>View Order</title>
</head>
<body style="background-color: #e6ffff">

<jsp:include page="header.jsp" />
	<br>&nbsp;
	<div class="container" style="background-color: #ccffff; box-shadow: 10px 10px 5px #888888;">
		<h3 style="text-align: center">Order No - ${bill_id}</h3>
		<h4 style="text-align: right;">Order Date :${date}</h4>
			<div class="panel-heading" style="background-color: #f5f5f5">
				<div class="row">
					<div class="col-xs-9">
						<h4>
							<span class="glyphicon glyphicon-shopping-cart"></span> Your Order
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
					<h5 style="text-align: center;">Product Name</h5>
				</div>
				<div class="col-xs-1">
					<h5 style="text-align: center;">Quantity</h5>
				</div>
				<div class="col-xs-1">
					<h5 style="text-align: center;">Price</h5>
				</div>
				<div class="col-xs-3"></div>
			</div>
			<c:forEach items="${saveCartList}" var="saveCart">
				<div class="row">
					<div class="col-xs-3"></div>
					<div class="col-xs-1">
						<p style="text-align: center;">
							<img style="width: 50px; height: 50px;"
								src="<c:url value="/resources/images/${saveCart.product_id}.jpg"/>" />
						</p>
					</div>
					<div class="col-xs-3">
						<strong>${saveCart.name}</strong>
					</div>
					<div class="col-xs-1">
						<p style="text-align: center;">
							<strong>${saveCart.quantity}</strong>
						</p>
					</div>
					<div class="col-xs-1">
						<p style="text-align: center;">
							<strong>&#8377.${saveCart.price}/-</strong>
						</p>
					</div>
					<div class="col-xs-3"></div>
				</div>
				<hr>
			</c:forEach>

			<div class="panel-footer">
				<div class="row text-center">
					<div class="col-xs-3"><a href="viewProfile" class="btn btn-lg">Back</a></div>
					<div class="col-xs-6">
						<h4 class="text-right">Total: &#8377. ${sum}/-</h4>
					</div>
					<div class="col-xs-3"></div>
				</div>
			</div>
	</div>
</body>
</html>