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

.button4 {
	border-radius: 50px;
}
</style>
<title>Admin - Categories</title>
</head>
<body style="background-color: #e6ffff">
	<jsp:include page="header-2.jsp" />

	<div class="row">
		<div class="col-sm-1">
			<a href="admin" class="button button4"><span><span
					class=" glyphicon glyphicon-triangle-left"></span></span>Back</a>
		</div>
		<div class="col-sm-3">
			<form:form action="category_add" commandName="category" method="post">
				<h2 style="text-align: center;">CATEGORY DETAILS</h2>
				<table class="table">
					<tr>
						<td>Category ID</td>
						<c:choose>
							<c:when test="${!empty category.id}">
								<td><form:input type="text" path="id" name="id"
										disabled="true" readonly="true" /></td>
							</c:when>
							<c:otherwise>
								<td><form:input type="text" path="id" name="id"
										maxlength="20" required="true"/></td>
							</c:otherwise>
						</c:choose>
					</tr>

					<tr>
						<form:input path="id" hidden="true" />
						<td>Category Name</td>
						<td><form:input type="text" path="name" name="name"
								maxlength="30" required="true"/></td>
					</tr>

					<tr>
						<td>Description</td>
						<td><form:input type="text" path="description"
								name="description" maxlength="500" required="true"/></td>
					</tr>

					<tr>
						<c:if test="${!empty category.name}">
							<td><input class="btn btn-success" type="submit" value="Edit Category" /></td>
						</c:if>
						<c:if test="${empty category.name}">
							<td><input class="btn btn-success" type="submit" value="Add Category" /></td>
						</c:if>
						<td><input class="btn btn-success" type="reset" value="Clear" /></td>
					</tr>
				</table>
			</form:form>
		</div>
		<div class="col-sm-8"></div>
	</div>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<c:if test="${!empty categoryList}">
				<table class="table table-striped">
					<thead>
						<tr>
							<th width="60px"><b>CATEGORY ID</b></th>
							<th width="60px"><b>CATEGORY NAME</b></th>
							<th width="60px"><b>CATEGORY DESCRIPTION</b></th>
							<td align="center" width="30px"><b>EDIT</b></td>
							<td align="center" width="30px"><b>DELETE</b></td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${categoryList}" var="category">
							<tr>
								<td align="left">${category.id}</td>
								<td align="left">${category.name}</td>
								<td align="left">${category.description}</td>
								<td align="center"><a
									href="<c:url value='category_edit-${category.id}'/>">EDIT</a></td>
								<td align="center"><a
									href="<c:url value='category_delete-${category.id}'/>">DELETE</a></td>
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