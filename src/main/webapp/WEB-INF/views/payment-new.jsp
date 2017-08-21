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
	<title>Payment Details</title>
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
	
	<div class="container">

		<section>
			<div id="container_demo">
				<div id="wrapper">
					<div id="login" class="animate form">
						<form:form  action="add_payment" commandName="payment" method="post">
							<h1>PAYMENT DETAILS</h1>
							
							<p>
								<label for="emailsignup" class="youmail">
									First Name* </label>
								<form:input id="emailsignup" name="emailsignup" maxlength="20"
									required="required" type="text" path="f_name"
									placeholder="Enter First Name" />
							</p>

							<p>
								<label for="emailsignup" class="youmail">
									Last Name* </label>
								<form:input id="emailsignup" name="emailsignup" maxlength="20"
									required="required" type="text" path="l_name"
									placeholder="Enter Last Name" />
							</p>
							
							<p>
								<label for="emailsignup" class="youmail">
									Address Line 1* </label>
								<form:input id="emailsignup" name="emailsignup" maxlength="75"
									required="required" type="text" path="st_line1"
									placeholder="Enter Street Address" />
							</p>

							<p>
								<label for="emailsignup" class="youmail">
									Address Line 2 </label>
								<form:input id="emailsignup" name="emailsignup" maxlength="75"
									type="text" path="st_line2"
									placeholder="Enter Locality/ LandMark" />
							</p>
							
							<p>
								<label for="emailsignup" class="youmail">
									City* </label>
								<form:input id="emailsignup" name="emailsignup" maxlength="50"
									required="required" type="text" path="city"
									placeholder="Enter City" />
							</p>

							<p>
								<label for="emailsignup" class="youmail">
									State* </label>
								<form:input id="emailsignup" name="emailsignup" maxlength="50"
									required="required" type="text" path="state"
									placeholder="Enter State" />
							</p>
							
							<p>
								<label for="emailsignup" class="youmail">
									Zip Code* </label>
								<form:input id="emailsignup" name="emailsignup" maxlength="6"
									required="required" type="text" path="zip_code" pattern="[0-9]{6}" 
									title="Enter valid 6 digit PIN CODE"
									placeholder="Enter Zip Code" />
							</p>

							<p>
								<label for="emailsignup" class="youmail">
									Mobile No* </label>
								<form:input id="emailsignup" name="emailsignup" maxlength="10"
									required="required" type="text" path="mobile" pattern="[0-9]{10}" 
									title="Enter valid 10 digit mobile no" placeholder="Enter Mobile No." />
							</p>	
							
							<p>
								<label for="emailsignup" class="youmail">
									Payment Method* </label>			
								<form:select id = "method" path="method">
             						  <option value = "Cash on Delivery">Cash on Delivery</option>
             						  <option value = "Card">Card</option>
          						</form:select>	
          					</p>			
														
							<p class="signin button">
									
								<input name="submit" type="submit" value="Continue" />
							</p>
							<p class="signin button">
								<a type="submit" class=" navbar-left btn btn-block btn-danger" href="myCart"><FONT style="color: WHITE">CANCEL PAYMENT</FONT></a>
							</p>
						</form:form>
					</div>
				</div>
			</div>
		</section>
	</div>
	
</body>	
</html>