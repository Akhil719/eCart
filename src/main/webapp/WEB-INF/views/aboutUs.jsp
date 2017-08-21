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
<title>About us - MyMusicHub</title>
</head>
<body style="background-color: #e6ffff">
<jsp:include page="header-2.jsp" />
<div class="container">
  <h2 class="text-center" style="color:#004d13; "><font face="Times New Roman">Contact Us</font></h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Write to us and we will be sure to improve ourselves and will respond to your queries withing 48 working hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Rushikonda, Vishkapatnam</p>
      <p><span class="glyphicon glyphicon-phone"></span> +91 9000366300</p>
      <p><span class="glyphicon glyphicon-envelope"></span> test@test.com</p>
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-5 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-5 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="text" required>
        </div>
        <div class="col-sm-2 form-group"></div>
      </div>
      <div class="row">
      <div class="col-sm-10 form-group">
      <textarea class="form-control" id="comments" name="comments" placeholder="Suggestions / Queries" rows="5"></textarea>
      <div class="col-sm-2 form-group"></div>
      </div>
      </div>
      <div class="row">
        <div class="col-sm-10 form-group">
          <button class="btn btn-success pull-right" type="submit">Send</button>
           <div class="col-sm-2 form-group"></div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Set height and width with CSS -->

 <div class="container" id="map" style="height:400px;"></div>
    <script>
      var map;
      function initMap() 
      {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 17.6868159, lng: 83.2184815},
          zoom: 15
        });
        var myCenter = new google.maps.LatLng(17.6868159, 83.2184815);
        var marker = new google.maps.Marker({
        	position:myCenter,
        	});

        	marker.setMap(map);
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAFoG38z_LXc-0zTLQ_0V9tqB4dCPDOX0Y	&callback=initMap"
    async defer></script>
<jsp:include page="footer.jsp" />
</body>
</html>