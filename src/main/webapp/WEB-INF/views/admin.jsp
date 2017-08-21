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
<style>
body 
{
	margin-top: 105px;
	padding-top: 105px;
		height: 100%;
	min-height: 100%;
}
.btn-primary,
.btn-primary:hover,
.btn-primary:active,
.btn-primary:visited,
.btn-primary:focus
{
    background-color: #009933;
    border-color: #009933;
}
</style>
<title>Admin Management</title>
</head>
<body style="background-color: #e6ffff">
<jsp:include page="header.jsp" />
<div class="container">
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8"><h1 style="text-align: center; color: #004d13"><font face="Vivaldi"><b>Admin Organization Page</b></font></h1></div>
  <div class="col-sm-2"></div>
</div>
<br><br>
<div class="row">
<div class="col-sm-4"></div>
  <div class="col-sm-4"><a class="btn btn-success btn-lg btn-block" href="admin_OrganizeCategory">Manage Categories</a></div>
  <div class="col-sm-4"></div>
</div>

<div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-4"><a class="btn btn-success btn-lg btn-block" href="admin_OrganizeSupplier">Manage Suppliers</a></div>
  <div class="col-sm-4"></div>
</div>

<div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-4"><a class="btn btn-success btn-lg btn-block" href="admin_OrganizeProduct">Manage Products</a></div>
  <div class="col-sm-4"></div>
</div>
</div>
</body>
</html>