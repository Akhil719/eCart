<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>redirecting</title>
</head>
<body>
<h3>Processing Request... Please wait<br>
Do not press Back or Refresh Button.</h3>
	<script>
        var timer = setTimeout(function() 
        {
            window.location.href='thankyou'
        }, 4000);
    </script>
</body>
</html>