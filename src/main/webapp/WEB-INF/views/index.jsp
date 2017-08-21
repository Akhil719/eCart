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
<%-- <script src="<c:url value="resources/js/bootstrap.js"/>"></script> --%>

<title>Welcome to MusicHub</title>
<style type="text/css">
body {
	margin-top: 100px;
	padding-top: 100px;
}
img {
    border-radius: 100%;
}
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 40%;
	margin: auto;
}
.floating-box {
    display: inline-block;
    width: 100%;
    height: 100%;
    margin-top:15px;
    margin-right: 5px;
    margin-left: 5px;
    margin-bottom:15px;
    border: none;  
}

h3 {
	color: black;
}
</style>
</head>
<body style="background-color: #e6ffff">
<jsp:include page="header.jsp" />
	<!-- Carousel Section -->
	<div>
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<!-- <li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
				<li data-target="#myCarousel" data-slide-to="5"></li> -->

			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<a href="<c:url value='category-CAT_001'/>"><img
						src="<c:url value="resources/pics/carousel/carousal1.jpg"/>"
						alt="First Slide" width="400" height="240" /></a>

				</div>

				<div class="item">
					<a href="product-FLW_001"><img
						src="<c:url value="resources/pics/carousel/carousal2.jpg"/>"
						alt="Second Slide" width="400" height="240" /></a>

				</div>

				<div class="item">
					<a href="product-EXO_003"><img
						src="<c:url value="resources/pics/carousel/carousal3.jpg"/>"
						alt="Third Slide" width="400" height="240" /></a>

				</div>

				<%-- <div class="item">
					<a href="<c:url value='category-CAT_201'/>"><img
						src="<c:url value="resources/pics/carousel/carousel - 4.jpg"/>"
						alt="Terrace Green House" width="320" height="240" /></a>

				</div>

				<div class="item">
					<a href="product-FRT_001"><img
						src="<c:url value="resources/pics/carousel/carousel - 5.jpg"/>"
						alt="Bangalore Grapes" width="320" height="240" /></a>

				</div>

				<div class="item">
					<a href="product-VEG_008"><img
						src="<c:url value="resources/pics/carousel/carousel - 6.jpg"/>"
						alt="Tomato" width="320" height="240" /></a>

				</div> --%>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
<%-- <jsp:include page="featured.jsp"></jsp:include> --%>

<div class="container" >
&nbsp;<br>
<h2 style="text-align: center;"><font style="font-family: Vivaldi; font-size: 25px; color: #004d13;"><strong>Our Range of Products</strong></font></h2>
<div class="row">
<div class="col-xs-4">
<div class="floating-box">
      <div class="item">
      <a href="<c:url value='category-CAT_001'/>">
        <img src="<c:url value="/resources/images/instrument.jpg"/>" alt="Instrument" width="250px" height="150px" style="opacity: 0.8;">
      </a>
        
      </div>
      <div class="carousel-caption">
          <h1><a href="<c:url value='category-CAT_001'/>" style="color: black"><i>Instrument</i></a></h1>		
        </div>
</div>
</div>
<div class="col-xs-4">
<div class="floating-box">
      <div class="item">
      <a href="<c:url value='category-CAT_002'/>">
        <img src="<c:url value="/resources/images/record.gif"/>" alt="Record" width="250px" height="150px" style="opacity: 0.8;">
      </a>
        
      </div>
      <div class="carousel-caption">
          <h1><a href="<c:url value='category-CAT_002'/>" style="color: black"><i>Discography</i></a></h1>		
        </div>
</div>
</div>

<div class="col-xs-4">
<div class="floating-box">
      <div class="item">
      <a href="<c:url value='category-CAT_003'/>">
        <img src="<c:url value="/resources/images/accessory.jpg"/>" alt="Accessory" width="250px" height="150px" style="opacity: 0.8;">
      </a>
       
      </div>
       <div class="carousel-caption">
          <h1><a href="<c:url value='category-CAT_003'/>" style="color: black"><i>Accessories</i></a></h1>		
        </div>
</div>
</div>

</div>

</div>
<br>
<jsp:include page="footer.jsp" />
</body>
</html>