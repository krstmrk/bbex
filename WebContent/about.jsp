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
				<h1><a href="index.jsp">B B E X</a></h1>
				<nav id="nav">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li>
							<a href="" class="icon fa-angle-down">Services</a>
							<ul>
								<li><a href="about.jsp">About BBEX</a></li>
								<li><a href="contact.jsp">Contact Us</a></li>
								<li><a href="ezdashboard.jsp">EZ-Pass</a></li>
							</ul>
						</li>
						<li> 
							<%
							    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
							%>
							<a href="login.jsp" class="button">Log In</a>
							<%} else {
							%>
							Welcome <%=session.getAttribute("userid")%>
							<a href='logout.jsp'  class="button">Log Out</a>
							<%
							    }
							%>
						</li>
					</ul>
				</nav>
			</header>

		<!-- Main -->
			<section id="main" class="container">
				<header>
					<h2>About Us</h2>
					<p>Learn more about BBEX.</p>
				</header>
				<div class="box">
					<span class="image featured"><img src="images/banner1.jpg" alt="" /></span>
					<h3>What is BBEX?</h3>
					<p>Batangas-Bicol Expressway, commonly known as BBEX, is a private-owned freeway which ranges from the city of Batangas to the city of Legazpi in the Bicol region. It is the longest expressway in the country and is also one of the safest there is.</p>
					<div class="row">
						<div class="6u 12u(mobilep)">
							<h3>What is our goal?</h3>
							<p>BBEX was built for the sake of the people. It was built to help lessen the traffic congestion in our roads and to give Filipinos access to the beautiful places that are not usually explored due to the distance.</p>
						</div>
						<div class="6u 12u(mobilep)">
							<h3>What about the EZ Pass?</h3>
							<p>EZ Pass is the reloadable pass which will help ease the transaction of motorists in the toll gates. With the EZ Pass, your 30 second transaction with a toll gate officer will just be done in a second. We highly recommend registering for an EZ Pass account, because why pay in cash all the time when/ you can load your account anytime and just pass through the toll gates with your EZ Pass? </p>
						</div>
					</div>
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<ul class="copyright">
					<li>&copy; All rights reserved.</li>
				</ul>
			</footer>

	</body>
</html>