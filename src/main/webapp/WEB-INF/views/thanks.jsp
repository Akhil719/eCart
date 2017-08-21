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
<title>Welcome to MusicHub</title>
<style>
body 
{
	margin-top: 50px;
	padding-top: 50px;
}

</style>
</head>
<body>
<jsp:include page="header.jsp" />
<br>&nbsp;
<h3>SUCCESS! </h3>
<h4> Your order has been placed...<br>
Your bill ID is <a href="getorder-${bill_id}">${bill_id}</a>
</h4>
<jsp:include page="index.jsp"></jsp:include>
</body>
</html>
