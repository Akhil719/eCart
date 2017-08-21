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
<title>Login - MyMusicHub</title>
<style type="text/css">
body 
{
	margin-top: 105px;
	padding-top: 105px;
}
</style>
</head>
<body style="background-color: #e6ffff">
	<jsp:include page="header-2.jsp"></jsp:include>
	<br>
	<div class="container">

		<section>
			<div id="container_demo">
				<!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
				<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
					id="tologin"></a>
				<div id="wrapper">
					<div id="login" class="animate form">
						<form action="<c:url value='j_spring_security_check'/>"
							method="POST" role="form">
							<h1>Log in</h1>
							<p>
								<label for="username" class="uname" data-icon="u"> Your
									E-mail ID</label> <input id="username" name="username"
									required="required" type="email" maxlength="150"
									placeholder="Enter you E-Mail ID" autofocus="autofocus"/>
								<!--                                		<input id="username"  name="username" required="required" type="text" placeholder="Enter mail id"> -->
							</p>

							<p>
								<label for="password" class="youpasswd" data-icon="p">
									Password </label> <input id="password" name="password"
									required="required" type="password" maxlength="20" pattern=".{6,20}" 
									title="Minimum 6 charectars required" placeholder="Enter your Password" />
							</p>

							<p class="login button">${loginmsg}
								<input type="submit" value="Login" />
							</p>
							<p class="change_link">Not a member yet ?
							 <a href="<c:url value="memberShip.obj" />" class="to_register">Join us</a>
							</p>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>