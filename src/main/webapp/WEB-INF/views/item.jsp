<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap.css"/>">
<script src="<c:url value="resources/js/jquery.min.js"/>"></script>
<%-- <script src="<c:url value="resources/js/bootstrap.js"/>"></script> --%>
<style type="text/css">
body {
	margin-top: 100px;
	padding-top: 100px;
}
</style>
<title>View Item</title>
</head>
<body style="background-color: #e6ffff">
<jsp:include page="header.jsp" />
&nbsp;<br>

<div class="container" style="background-color:#ccffff; box-shadow: 10px 10px 5px #888888;">
	<h1>${selectedProduct.name} Details</h1>
  <div class="row">
    <div class="col-sm-4" style="background-color:#ccffff;">
    <img src="<c:url value="/resources/images/${selectedProduct.id}.jpg"/>" height="300px" width="365px"/>
    </div>
    
    
    <div class="col-sm-6" style="background-color: #ccffff;">
    	<table class="table table-striped">
    		<tr>
				<th> </th>
				<td> </td>
    		</tr>
    		
    		<tr>
				<th> Product Name </th>
				<td> ${selectedProduct.name} </td>
    		</tr>
    		
    		<tr>
				<th> </th>
				<td>  </td>
    		</tr>

    		<tr>
				<th> Product Price </th>
				<td><b> &#8377. ${selectedProduct.price}.00/- </b></td>
    		</tr>
    		
    		<tr>
				<th>  </th>
				<td>  </td>
    		</tr>
    		
    		<tr>
				<th> Supplied By </th>
				<td> ${selectedProduct.supplier.name} </td>
    		</tr>
    		
    		<tr>
				<th> </th>
				<td> </td>
    		</tr>
    		
    		<tr>
				<th> Categorized in </th>
				<td> ${selectedProduct.category.name} </td>
    		</tr>
    		
    		<tr>
				<th> </th>
				<td> </td>
    		</tr>
    		
    		<tr>
				<th> Stock Left </th>
				<td> ${selectedProduct.stock} </td>
    		</tr>
    		
    		<tr>
				<th> </th>
				<td> </td>
    		</tr>
    	</table>
    
    </div>
    
    
    
    <div class="col-sm-2">
    </div>
  </div>
	&nbsp;<br>
	<div class="row">
	<div class="col-sm-10" style="background-color:#ccffff;">
	<table class="table table-striped">
    		<tr>
				<th> </th>
				<td>  </td>
    		</tr>

    		<tr>
				<th> Product Description </th>
				<td> ${selectedProduct.description} </td>
    		</tr>
    		
    		<tr>
				<th> </th>
				<td> </td>
    		</tr>
    </table>
	</div>
	<div class="col-sm-2" style="background-color: #ccffff">
<c:choose>
							<c:when test="${selectedProduct.stock == 0}">
								<button class="btn btn-danger btn-lg disabled" >Out Of Stock</button>
							</c:when>
							<c:otherwise>
								<a class="btn btn-success btn-block" href="<c:url value='cart_add-${selectedProduct.id}' />">Add to Cart</a>
								<a class="btn btn-warning btn-block" href="<c:url value='buy_now-${selectedProduct.id}' />">Buy Now</a>
							</c:otherwise>
</c:choose>
	</div>
</div>
<br>&nbsp;
	
</div>
</body>
</html>