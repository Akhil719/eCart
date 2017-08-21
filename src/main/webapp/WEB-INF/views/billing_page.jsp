<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/demo.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/style3.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/animate-custom.css"/>" />
<title>Billing</title>
<style type="text/css">
body {
	margin-top: 50px;
	padding-top: 50px;
}
</style>
</head>
<body style="background-color: #e6ffff">
	<jsp:include page="header-3.jsp" />
	<br>

	<div class="container" style="background-color: #e6ffff;">
		<h1 style="text-align: center;">CREDIT CARD PAYMENT</h1>
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6" style="background-color: white">
				<h3>CARD DETAILS</h3>
				<br>
				<form:form action="add_billing" commandName="billing" method="post">
					<div class="form-group">
						<h4 style="text-align: left;">CREDIT CARD NUMBER</h4>
						<form:input type="text" class="form-control" path="cc_no"
							maxlength="16" pattern="[0-9]{16}"
							title="Enter valid 16 digit Card no" required="required" />
					</div>
					<div class="row form-group">
						<div class="col-sm-3">
							<h4 style="text-align: left;">VALID UPTO</h4>
							<form:select class="form-control" path="exp_month">
								<option value="00">Month</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</form:select>
						</div>
						<div class="col-sm-3">
							<h4 style="text-align: left;">&nbsp;</h4>
							<form:select class="form-control" path="exp_year">
								<option value="00">Year</option>
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019">2019</option>
								<option value="2020">2020</option>
								<option value="2021">2021</option>
								<option value="2022">2022</option>
								<option value="2023">2023</option>
								<option value="2024">2024</option>
								<option value="2025">2025</option>
							</form:select>
						</div>
						<div class="col-sm-3">
							<h4 style="text-align: left;">CVV</h4>
							<input type="password" class="form-control" maxlength="3"
								pattern="[0-9]{3}" title="Enter valid 3 digit CVV"
								required="required" />
						</div>
						<div class="col-sm-3">&nbsp;</div>
					</div>
					<div class="form-group">
						<h4 style="text-align: left;">NAME ON CARD</h4>
						<form:input type="text" class="form-control" path="name"
							maxlength="100" required="required" />
					</div>

					<div class="row form-group">
						<div class="col-sm-6">
							<form:input type="submit" class="btn btn-block btn-success"
								path="exp_month" value="PROCEED TO PAYMENT" />
						</div>
						<div class="col-sm-6">
							<a href="home" class="btn btn-block btn-danger">CANCEL
								PAYMENT</a>
						</div>
					</div>

				</form:form>
			</div>
			<div class="col-sm-3"></div>

		</div>
	</div>
</body>
</html>