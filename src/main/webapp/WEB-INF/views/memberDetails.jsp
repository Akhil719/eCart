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
<title>SignUp - MyMusicHub</title>
<style type="text/css">
body {
	margin-top: 50px;
	padding-top: 50px;
}
</style>
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
							<h1>Sign up</h1>

							<p>
								<label for="emailsignup" class="youmail" data-icon="u">
									First Name </label>
								<form:input id="emailsignup" name="emailsignup" maxlength="20"
									required="required" type="text" path="f_name"
									placeholder="Enter First Name" autofocus="autofocus"/>
								<c:forEach
									items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
									var="err">
									<div>
										<span>${err.text}</span>
									</div>
								</c:forEach>
							</p>

							<p>
								<label for="emailsignup" class="youmail" data-icon="u">
									Last Name </label>
								<form:input id="emailsignup" name="emailsignup" maxlength="20"
									required="required" type="text" path="l_name"
									placeholder="Enter Last Name" />
								<c:forEach
									items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
									var="err">
									<div>
										<span>${err.text}</span>
									</div>
								</c:forEach>
							</p>

							<p>
								<label for="emailsignup" class="youmail" data-icon="M">
									Mobile Number </label>
								<form:input id="emailsignup" name="emailsignup" maxlength="10"
									required="required" type="text" path="mobile" pattern="[0-9]{10}" 
									title="Enter valid 10 digit mobile no" placeholder="Enter 10 digit Mobile Number"/>
								<c:forEach
									items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
									var="err">
									<div>
										<span>${err.text}</span>
									</div>
								</c:forEach>
							</p>

							<p>
								<label for="username" class="uname" data-icon="e">
									E-Maid ID </label>
								<form:input id="username" name="username" required="required" maxlength="150"
									type="email" path="mail_id" placeholder="E-mail ID - example@someone.com" 
									title="Enter valid Email - example@someone.com"/>
								<c:forEach
									items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
									var="err">
									<div>
										<span>${err.text}</span>
									</div>
								</c:forEach>
							</p>

							<p>
								<label for="passwordsignup" class="youpasswd" data-icon="p">
									Password </label>
								<form:input id="passwordsignup" name="passwordsignup" maxlength="20"
									required="required" type="password" path="password" pattern=".{6,20}" 
									title="Minimum 6 charectars required" placeholder="Choose your Password" />
								<c:forEach
									items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
									var="err">
									<div>
										<span>${err.text}</span>
									</div>
								</c:forEach>
							</p>

							<p class="signin button">
								<input name="_eventId_submit" type="submit" value="Continue" />
							</p>
							<p class="change_link">
								Already a member ? <a href="login" class="to_register">Go
									and log in </a>
							</p>
						</form:form>
					</div>
				</div>
			</div>
		</section>
	</div>

</body>
</html>