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
<title>Admin - Supplier</title>
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

			<form:form action="supplier_add" commandName="supplier" method="post">

				<h2 style="text-align: center;">SUPPLIER DETAILS</h2>
				<table class="table">
					<tr>
						<td>Supplier ID</td>
						<c:choose>
							<c:when test="${!empty supplier.id}">
								<td><form:input type="text" path="id" name="id"
										disabled="true" readonly="true" /></td>
							</c:when>
							<c:otherwise>
								<td><form:input type="text" path="id" name="id"
										maxlength="20" required="true"/>
							</c:otherwise>
						</c:choose>
					</tr>

					<tr>
						<form:input path="id" hidden="true" />
						<td>Supplier Name</td>
						<td><form:input type="text" path="name" name="name"
								maxlength="30" required="true"/></td>
					</tr>

					<tr>
						<td>Supplier Address</td>
						<td><form:input type="text" path="address" name="address"
								maxlength="100" required="true"/></td>
					</tr>

					<tr>
						<c:if test="${!empty supplier.name}">
							<td><input class="btn btn-success" type="submit" value="Edit Supplier" /></td>
						</c:if>
						<c:if test="${empty supplier.name}">
							<td><input class="btn btn-success" type="submit" value="Add Supplier" /></td>
						</c:if>
						<td><input class="btn btn-success" type="reset" value="Clear" /></td>
					</tr>
				</table>
			</form:form>
		</div>
		<div class="col-sm-8"></div>
	</div>
	<hr>

	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<c:if test="${!empty supplierList}">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Supplier ID</th>
							<th>Supplier Name</th>
							<th>Supplier Address</th>
							<th style="text-align: center;">EDIT</th>
							<th style="text-align: center;">DELETE</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${supplierList}" var="supplier">
							<tr>
								<td style="text-align: left;">${supplier.id}</td>
								<td style="text-align: left;">${supplier.name}</td>
								<td style="text-align: left;">${supplier.address}</td>
								<td align="center"><a
									href="<c:url value='supplier_edit-${supplier.id}'/>">EDIT</a></td>
								<td align="center"><a
									href="<c:url value='supplier_delete-${supplier.id}'/>">DELETE</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
		</div>
		<div class="col-sm-2"></div>
	</div>

</body>
</html>