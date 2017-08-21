<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; cha`et=utf-8" />
<title>View Categories</title>
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap.css"/>">
<script src="<c:url value="resources/js/jquery.min.js"/>"></script>
<style>
body 
{
	margin-top: 100px;
	padding-top: 100px;
}

</style>
</head>
<body style="background-color: #e6ffff">
<jsp:include page="header.jsp" />
&nbsp;<br>
<div class="container" style="background-color: #ccffff; box-shadow: 10px 10px 5px #888888;">
<h2 style="text-align: center;"><i>${category.name}</i></h2>
<br>

<div class="row">
<div class="panel-heading">
    <div class="col-xs-2"><p style="text-align: center;"><a class="btn btn-success btn-block" href="<c:url value='category-CAT_001'/>"><i>Classical</i></a></p></div>
	<div class="col-xs-2"><p style="text-align: center;"><a class="btn btn-success btn-block" href="<c:url value='category-CAT_002'/>"><i>Western</i></a></p></div>
	<div class="col-xs-2"><p style="text-align: center;"><a class="btn btn-success btn-block" href="<c:url value='category-CAT_003'/>"><i>Jazz</i></a></p></div>
	<div class="col-xs-2"><p style="text-align: center;"><a class="btn btn-success btn-block" href="<c:url value='category-CAT_004'/>"><i>Rock</i></a></p></div>
	<div class="col-xs-2"><p style="text-align: center;"><a class="btn btn-success btn-block" href="<c:url value='category-CAT_101'/>"><i>Instrumental</i></a></p></div>
	<div class="col-xs-2"><p style="text-align: center;"><a class="btn btn-success btn-block" href="<c:url value='category-CAT_201'/>"><i>Melody</i></a></p></div>
</div>
</div>
<c:forEach items="${category.products}" var="product">
<div class="row">
	<div class="col-xs-3"><p style="text-align: center;"><img style="width:200px;height:200px;" src="<c:url value="/resources/images/${product.id}.jpg"/>"/></p></div>
	<div class="col-xs-4">
	<h2><a href="<c:url value='product-${product.id}'/>"><font style="color: #004d13;">${product.name}</font></a></h2>
	<br>${product.description}
	</div>
	<div class="col-xs-2"></div>
	<div class="col-xs-3"><p style="text-align: center;">
	<h2>&#8377 ${product.price}/-</h2><br>
	<strong>Stock</strong>	
	<br>${product.stock} pieces left.<br>
	</div>
</div>
<hr>
</c:forEach>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>