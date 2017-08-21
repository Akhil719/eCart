<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap.css"/>">
<script src="<c:url value="resources/js/jquery.min.js"/>"></script>
<title>Admin - Products</title>
<style>
body {
	margin-top: 50px;
	padding-top: 50px;
}
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.button4 
{
border-radius: 50px;
}
</style>
</head>
<body style="background-color: #e6ffff">

	<jsp:include page="header-2.jsp" />
	
	<div class="row">
		<div class="col-sm-1"><a href="admin" class="button button4"><span><span class=" glyphicon glyphicon-triangle-left"></span></span>Back</a></div>
		<div class="col-sm-3">
			<form:form action="product_add" commandName="product" method="post"
				enctype="multipart/form-data">
				<h2 style="text-align: center;">PRODUCT DETAILS</h2>
				<table class="table">
					<tr>
						<%-- <td>Product ID</td>
						<c:choose>
							<c:when test="${!empty product.id}">
								<td><form:input type="text" path="id" name="id"
										disabled="true" readonly="true" /></td>
							</c:when>
							<c:otherwise>
								<td><form:input type="text" path="id" name="id"
										maxlength="20" required="true"/></td>
							</c:otherwise>
						</c:choose>
					</tr>

					<tr> --%>
						<form:input path="id" hidden="true" />
						<td>Product Name</td>
						<td><form:input type="text" path="name" name="name"
								maxlength="50" required="true"/></td>
					</tr>

					<tr>
						<td>Product Price</td>
						<td><form:input type="text" path="price" name="price"
								maxlength="5" required="true"/></td>
					</tr>

					<tr>
						<td>Description</td>
						<td><form:input type="text" path="description"
								name="description" maxlength="500" required="true"/></td>
					</tr>

					<tr>
						<td>Category List</td>
						<td><form:select path="category.name" items="${categoryList}"
								itemValue="name" itemLabel="name"></form:select></td>
					</tr>

					<tr>
						<td>Supplier List</td>
						<td><form:select path="supplier.name" items="${supplierList}"
								itemValue="name" itemLabel="name"></form:select></td>
					</tr>

					<tr>
						<td>Product Stock</td>
						<td><form:input type="text" path="stock" name="stock"
								maxlength="5" required="true"/></td>
					</tr>

					<tr>
						<td>Product Image</td>
						<td><form:input type="file" path="image" name="image" /></td>
					</tr>

					<tr>
						<c:if test="${!empty product.name}">
							<td><input class="btn btn-success" type="submit" value="Edit Product" /></td>
						</c:if>
						<c:if test="${empty product.name}">
							<td><input class="btn btn-success" type="submit" value="Add Product" /></td>
						</c:if>
						<td><input class="btn btn-success" type="reset" value="Clear" /></td>
					</tr>

				</table>
			</form:form>
		</div>
		<div class="col-sm-8"></div>
	</div>


<div class="row">
<div class="col-sm-1"></div>
	<div class="col-sm-10">
	<c:if test="${!empty productList}">
		<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th width="40" style="text-align: center;">Product ID</th>
				<th width="200" style="text-align: center;">Product Name</th>
				<th width="40" style="text-align: center;">Price</th>
				<th width="250" style="text-align: center;">Description</th>
				<th width="120" style="text-align: center;">Category Name</th>
				<th width="120" style="text-align: center;">Supplier Name</th>
				<th width="60" style="text-align: center;">Stock</th>
				<th width="70" style="text-align: center;">Image</th>
				<th width="60" style="text-align: center;">Edit</th>
				<th width="60" style="text-align: center;">Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td align="left">${product.id}</td>
					<td align="left">${product.name}</td>
					<td align="left">Rs.${product.price}.00/-</td>
					<td align="left">${product.description}</td>
					<td align="left">${product.category.name}</td>
					<td align="left">${product.supplier.name}</td>
					<td align="left">${product.stock}</td>
					<td align="center"><img src="<c:url value="/resources/images/${product.id}.jpg"/>"
						alt="${product.id}" width="50px" height="50px" /></td>
					<td align="center"><a
						href="<c:url value='product_edit-${product.id}'/>">EDIT</a></td>
					<td align="center"><a
						href="<c:url value='product_delete-${product.id}'/>">DELETE</a></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
	</c:if>
	</div>
	<div class="col-sm-1"></div>
</div>
</body>
</html>