<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>

<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap.css"/>">
<script src="<c:url value="resources/js/jquery.min.js"/>"></script>
<script src="<c:url value="resources/js/bootstrap.js"/>"></script>

<style>
.navbar-default {
	background-color: #000000;
}
.dropdown-toggle[aria-expanded="true"] {
  background:#e6ffff !important;
  color:#004d13 !important;
}
.dropdown-menu
{
	background-color: #000000;
}
</style>

</head>

<body>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="home"><font style="font-family: Vivaldi; font-size: 35px; color: white;"><strong>My Music Hub</strong></font>
				</a>
			</div>

			<ul class="nav navbar-nav navbar-right">
				<li><a style="color: white" href="home"><span
						class="glyphicon glyphicon-home"></span> HOME</a></li>
				<li><a style="color: white" href="aboutUs"><span
						class="glyphicon glyphicon-globe"></span> ABOUT US</a></li>
				<li class="divider-vertical"></li>
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<c:if
						test="${pageContext.request.userPrincipal.name != 'test@test.com'}">
						<li><a style="color: white" href="<c:url value="/myCart" />"><span
								class="glyphicon glyphicon-shopping-cart"></span> CART(${cartSize})</a></li>
					</c:if>
					<c:if
						test="${pageContext.request.userPrincipal.name  == 'test@test.com'}">
						<li><a style="color: white" href="<c:url value="/admin" />">VIEW
								ALL</a></li>
					</c:if>
					<li><a href="viewProfile" style="color: white; text-decoration: underline;">Hello,
							${user_f_name}</a></li>
					<li><a style="color: white; margin: 0px 0px 0px 0px"
						href="<c:url value="/j_spring_security_logout" />"> <span
							class="glyphicon glyphicon-log-out"></span> Log Out
					</a></li>
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name  == null}">
					<li><a style="color: white; margin: 0px 0px 0px 0px"
						href="<c:url value="/login" />"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a style="color: white; margin: 0px 0px 0px 0px"
						href="<c:url value="memberShip.obj" />"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				</c:if>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<c:forEach items="${categoryList}" var="category">
					<li class="dropdown"><a class="dropdown-toggle" style="color: white"
						data-toggle="dropdown" href="${category.name}">${category.name}<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<c:forEach items="${category.products}" var="product">
								<li><a style="color: white"
									href="<c:url value='product-${product.id}'/>">
										${product.name} </a>
							</c:forEach>
						</ul></li>
				</c:forEach>
			</ul>
		</div>
	</nav>
	
</body>
</html>