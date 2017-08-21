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
<title>My Cart</title>
<style>
body 
{
	margin-top: 50px;
	padding-top: 50px;
}

</style>
</head>
<body style="background-color: #e6ffff;">
<jsp:include page="header-2.jsp" />
<br>&nbsp;
<div class="container" style="background-color: #ccffff; box-shadow: 10px 10px 5px #888888;">
<h1 style="color: #004d13; text-align: center; ">CART LIST</h1>
<h3 style="color: #004d13; text-align: center; ">${errorMsg}</h3>
<c:if test="${!empty cartList}">
<div class="panel-heading" style="background-color: #f5f5f5">
<div class="row">
<div class="col-xs-9"><h4><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</h4></div>
<div class="col-xs-3">
<a href="home" type="button" class="btn btn-success btn-lg btn-block">
<span class="glyphicon glyphicon-share-alt"></span> Continue shopping
</a>
</div>
</div>
</div>
<br>
<div class="row">
	<div class="col-xs-3"><h5 style="text-align: center;">Image</h5></div>
	<div class="col-xs-3"><h5 style="text-align: left;">Product Name</h5></div>
	<div class="col-xs-2"><h5 style="text-align: center;">Price</h5></div>
	<div class="col-xs-2"><h5 style="text-align: center;">Quantity</h5></div>
	<div class="col-xs-2"><h5 style="text-align: center;">Delete</h5></div>
</div>
<c:forEach items="${cartList}" var="cart">
<div class="row">
	<div class="col-xs-3"><p style="text-align: center;"><img style="width:200px;height:200px;" src="<c:url value="/resources/images/${cart.product_id}.jpg"/>"/></p></div>
	<div class="col-xs-3"><strong>${cart.product_name}</strong></div>
	<div class="col-xs-2"><p style="text-align: center;"><strong>&#8377.${cart.price}/-</strong></p></div>
	<div class="col-xs-2"><p style="text-align: center;"><strong>${cart.quantity}</strong></p></div>
	<div class="col-xs-2"><p style="text-align: center;"><a class="btn btn-link btn-xs" href="<c:url value='cart_delete-${cart.cart_id}'/>"> <span class="glyphicon glyphicon-trash"></span></a></p></div>
</div>
<hr>
</c:forEach>

<div class="row">
						<div class="col-xs-3">
								<a href="<c:url value="/myCart" />"  type="button" class="btn btn-danger btn-block">
									UPDATE CART</a>
							</div>
							<div class="text-center">
							<div class="col-xs-9">
								<h5 class="text-left"><b>Added items? Not visible in cart?</b></h5>
							</div>
						</div>
</div>
				
				<div class="panel-footer">
					<div class="row text-center">
						<div class="col-xs-9">
							<h4 class="text-right"> Total: &#8377. ${sum}/-</h4>
						   </div>
						<div class="col-xs-3">
							<a href="checkout" type="button" class="btn btn-success btn-block">
								<span class="glyphicon glyphicon glyphicon-arrow-right"></span> CHECKOUT </a>
						</div>
					</div>
     				</div>  
<hr>
</c:if>
</div>
</body>
</html>