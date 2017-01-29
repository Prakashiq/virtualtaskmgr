<!DOCTYPE html>
<html>
<head>
<!-- bower:css -->
<link rel="stylesheet" href="/lib/bootstrap/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="/lib/bootstrap/dist/css/bootstrap-theme.css" />
<link rel="stylesheet" href="/lib/font-awesome/css/font-awesome.css" />
<link rel="stylesheet" href="/lib/font-awesome/css/font-awesome.min.css" />
<!-- endbower -->
<!-- bower:js -->
<script src="/lib/angular/angular.js"></script>
<script src="/lib/jquery/dist/jquery.js"></script>
<script src="/lib/bootstrap/dist/js/bootstrap.js"></script>
<!-- endbower -->
<!-- inject:css-->
<link rel="stylesheet" href="/stylesheets/style.css">
<!-- endinject-->
<!-- inject:js-->
<!-- endinject-->
</head>
<body>
	<div>
		<center>
		<img src="/images/images.png">
		<h1>{{ message }}</h1>
		<h1>{{ status }}</h1> 
		</center>
	</div>
	<pre>{{ stack }}</pre>
	<div>
		<h2><a href='\'>Back to Home...</a></h2>
	</div>

</body>
</html>
