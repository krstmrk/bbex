<!DOCTYPE HTML>
<html>
	<head>
		<title>Batangas - Bicol Expressway</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.dropotron.min.js"></script>
		<script src="js/jquery.scrollgress.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-wide.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body>

		<!-- Header -->
			<header id="header" class="skel-layers-fixed">
				<h1><a href="index.html">B B E X</a></h1>
				<nav id="nav">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li>
							<a href="" class="icon fa-angle-down">Services</a>
							<ul>
								<li><a href="about.html">About BBEX</a></li>
								<li><a href="contact.html">Contact Us</a></li>
								<li><a href="ezdashboard.html">EZ-Pass</a></li>
							</ul>
						</li>
						<li> New here? <a href="register.html" class="button">Sign Up</a></li>
					</ul>
				</nav>
			</header>

		<!-- Main -->
			<section id="main" class="container 75%">
				<div class="box">
					<%
					    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
					%>
					You are not logged in<br/>
					<a href="index.jsp">Please Login</a>
					<%} else {
					%>
					Welcome <%=session.getAttribute("userid")%>
					<a href='logout.jsp'>Log out</a>
					<%
					    }
					%>
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="https://twitter.com" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="https://facebook.com" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; All rights reserved.</li>
				</ul>
			</footer>

	</body>
</html>

