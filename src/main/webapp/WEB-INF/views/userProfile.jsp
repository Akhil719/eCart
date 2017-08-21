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
	margin-top: 100px;
	padding-top: 100px;
}
</style>
<title>View Profile</title>
</head>

<body style="background-color: #e6ffff">
	<jsp:include page="header.jsp" />
	&nbsp;<br>
<div class="container" style="box-shadow: 10px 10px 5px #888888;">
	<div class="row" style="background-color: #e6ffff;"><hr> 
		<div class="col-sm-1">
		</div>
		<div class="col-sm-5">
		<form:form action="updateProfile" commandName="user" method="post">
				<h2 style="text-align: center;">Please Update User Details</h2>
<%-- 				<p style="text-align: center;"><img alt="user" width="200px" height="200px" src="<c:url value="/resources/pics/profilePic.jpg"/>"/></p> --%>
				<table class="table">
					<tr>
						<td>First Name</td>
						<td><form:input type="text" path="f_name" name="f_name"
								maxlength="5" required="true"/></td>
					</tr>

					<tr>
						<td>Last Name</td>
						<td><form:input type="text" path="l_name" name="l_name"
								maxlength="5" required="true"/></td>
					</tr>

					<tr>
						<td>Mobile No</td>
						<td><form:input type="text" path="mobile" name="mobile"
								maxlength="10" required="true"/></td>
					</tr>
							<td><input class="btn btn-success" type="submit" value="Update" /></td>
				</table>
				</form:form>
		</div>
		<%-- <div class="col-sm-8">
			<h2 style="text-align: center;">USER ORDERS</h2>
			<br>
			<table class="table table-hover">
			<c:forEach items="${billsList}" var="bill">
				<tr>
				<td>Order No - <a style="text-decoration: none" href="getorder-${bill}">${bill}</a></td>
				</tr>				
			</c:forEach>
			</table>
		</div> --%>
	</div>
</div>
</body>
</html>