<html>
<head>
<title>{{ title }}</title>
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
<style>
body {
	background: white;
}

</style>


<body class="container">

	<div class="row">
		<!-- <I><h2 class="text-center"> Receiving Application</h2></I> -->
		<div class="col-md-offset-1 col-md-6 col-sm-12">
			<div class="login">
				<h2><font color="#222222">Sign-in</font> </h2> 
				<hr>
				<!--Code of form started-->
				<form class="form-horizontal" name="frm" action="/signin" method="post">
					<!--Code to validate first name is written here-->
					<div class="form-group">
						<label id="label" class="control-label">User Name:</label> <input
							type="text" class="form-control" name="username"
							ng-model="user.username" placeholder="Enter User Name"
							autocomplete="off" required />
					</div>

					<!--Code to validate password is written here-->
					<div class="form-group">
						<label id="label" class="control-label">Password:</label> <input
							type="password" class="in1 form-control" ng-model="user.password"
							name="password" placeholder="Enter Password" autocomplete="off"
							ng-minlength="5" ng-maxlength="12" required> 
					</div>

					<div class="form-group">
						<input ng-disabled="frm.$invalid" class="btn btn-primary"
							type="submit" value="Submit">
						<input class="btn btn-primary" type="reset" 
							value="Clear"> 
					</div>
					{% if (message.lenght > 0) %}
					<div>{{ message }}</div>
					<div class="alert alert-danger">{{ message }}</div>
					{% endif %}

				</form>
			</div>
		</div>
	</div>
</body>
</html>