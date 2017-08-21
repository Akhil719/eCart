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
<style type="text/css">
body {
	margin-top: 50px;
	padding-top: 50px;
}
</style>
<title>User Details</title>
</head>
<body style="background-color: #e6ffff">
	<jsp:include page="header-2.jsp" />
	<br>

	<div class="container">

		<section>
			<div id="container_demo">
				<div id="wrapper">
					<div id="login" class="animate form">
						<form:form modelAttribute="user">
							<h1>Confirm Details</h1>

							<p>
								<label for="emailsignup" class="youmail" data-icon="u">
									First Name </label> <input id="emailsignup" name="emailsignup"
									type="text" disabled="disabled" value="${user.f_name}" />
							</p>

							<p>
								<label for="emailsignup" class="youmail" data-icon="u">
									Last Name </label> <input id="emailsignup" name="emailsignup"
									type="text" disabled="disabled" value="${user.l_name}" />
							</p>

							<p>
								<label for="emailsignup" class="youmail" data-icon="M">
									Mobile Number </label> <input id="emailsignup" name="emailsignup"
									type="text" disabled="disabled" value="${user.mobile}" />
							</p>

							<p>
								<label for="username" class="uname" data-icon="e">
									E-Maid ID </label> <input id="username" name="username"
									required="required" type="text" disabled="disabled"
									value="${user.mail_id}" />
							</p>

							<p>
								<label for="passwordsignup" class="youpasswd" data-icon="p">
									Password </label> <input id="passwordsignup" name="passwordsignup"
									type="text" disabled="disabled" value="${user.password}" />
							</p>

							<p class="signin button">
								<input class="navbar-left" name="_eventId_edit" type="submit" value="Edit Details" />

								<input name="_eventId_submit" type="submit"
									value="Sign Up" />
							</p>
						</form:form>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>