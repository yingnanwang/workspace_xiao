<!doctype html>
<html>
<head>
	<title>My-account</title>
	<link href="css2/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="css2/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<!--web-font-->
	<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,700,300,600,800,400' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Oleo+Script:400' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Karma:400,300' rel='stylesheet' type='text/css'>
	<!--//web-font-->
	<!-- Custom Theme files -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Viatges Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<script src="http://ajax.useso.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<!-- //Custom Theme files -->
	<!-- js -->
	<script src="js/jquery.min.js"></script>
	<script src="js/modernizr.custom.js"></script>
	<!-- //js -->	
	<!-- start-smoth-scrolling-->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
	<script type="text/javascript" src="js/modernizr.custom.53451.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
	<!--//end-smoth-scrolling-->
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-logo">
				<a href="index.html"><h1>Indelible Image</h1></a>
			</div>
			<div class="clearfix"> </div>
		</div>	
	</div>
	<!--//header-->
	<div class="login">
		<div class="container">
			<div class="col-md-6 register">
				<h3>Register New Account</h3>
				<form action = "login_register/dealRegister.jsp" method="post">
					<label>Username :</label>
					<input name = "username"  type="text" required="true">
					<label>Email :</label>
					<input name = "email"  type="email" required="true">
					<label>Password :</label>
					<input name = "passwd"  type="password" required="true">
					<input type="submit" value="Register">
				</form>
			</div>
			<!--  <div class="col-md-6 login-info">-->
			<div class="col-md-6 register">
				<h3>Login Form</h3>
				<form action = "login_register/dealLogin.jsp" method="post">
					<label>Username :</label>
					<input name = "username"  type="text"  required= "true">
					<label>Password :</label>
					<input name = "passwd"  type="password" required="true">
					<input type="submit" value="Login">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--footer-->
	<div class="footer">
		<div class="container">
			<p>indelible image</p>
		</div>
	</div>
	<!--//footer-->
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			$().UItoTop({ easingType: 'easeOutQuart' });	
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->	
</body>
</html>	