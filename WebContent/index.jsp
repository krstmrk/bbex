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
		<script type="text/javascript" src="js/crossfade.js"></script>		
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-wide.css" />
			<style>
			#slide {margin:auto;padding:auto;}
			</style>
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body class="landing" onLoad="runSlideshow()">

		<!-- Header -->
			<header id="header" class="alt">
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

		<!-- Banner -->
			<section id="banner">
				<h2>Batangas - Bicol Expressway</h2>
				<p>Your safest and fastest way from Batangas to Bicol.</p>
				<ul class="actions">
					<li>
					<%
					    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
					%>
					<a href="register.jsp" class="button special">Sign Up</a>
					<%} else {
					%>
					<a href='ezdashboard.jsp'  class="button special">EZ Dashboard</a>
					<%
					    }
					%>
					</li>
					<li><a href="about.jsp" class="button">Learn More</a></li>
				</ul>
			</section>

		<!-- Main -->
			<section id="main" class="container">

				<section class="box special">
					<header class="major">
						<h2> The best way
						<br /> to your perfect out-of-the-city getaway
						</h2>
						<p>Welcome to Batangas - Bicol Expressway!
						</p>
					</header>
					<span class="image featured">
					<ul id="gallery" style="visibility: visible;list-style:none;margin:0;padding:0;">
					<li style="margin:0;padding:0;"><img src="images/slider01.jpg" id="slide"/></li>
					<li style="margin:0;padding:0;"><img src="images/slider02.jpg" /></li>
					<li style="margin:0;padding:0;"><img src="images/slider03.jpg" /></li>
					<li style="margin:0;padding:0;"><img src="images/slider04.jpg" /></li>
					<li style="margin:0;padding:0;"><img src="images/slider05.jpg" /></li>
					</ul>
					<img src="images/slider05.jpg" style="z-index:-1;visibility:hidden;" />

    			</span>
				</section>

				<section class="box special features">
					<div class="features-row">
						<section>
							<span><img src="images/sublogo1.png" height="100px" width="100px"/></span>
							<h3>Fast Travel</h3>
							<p>BBEX boasts its multiple lanes that help lessen the traffic caused by the huge amount of cars.</p>
						</section>
						<section>
							<span><img src="images/sublogo2.png" height="100px" width="100px"/></span>				
							<h3>Beautiful Scenery</h3>
							<p>With mountains, forests and valleys on both sides of the road, driving on BBEX is beautiful as you can experience the beauty of nature at the same time.</p>
						</section>
					</div>
					<div class="features-row">
						<section>
							<span><img src="images/sublogo3.png" height="100px" width="100px"/></span>
							<h3>Speed Limit Policy</h3>
							<p>BBEX implements a strict speed limit policy. The maximum speed limit for cars is 100kph, and the minimum is 60kph.</p>
						</section>
						<section>
							<span><img src="images/sublogo4.png" height="100px" width="100px"/></span>
							<h3>Safe Driving Experience</h3>
							<p>Wide roads, protected turning lanes and guard rail ends angled away from the road, driving on BBEX is one of the safest thing you will ever experience.</p>
						</section>
					</div>
				</section>

				<div class="row">
					<div class="6u 12u(narrower)">

						<section class="box special">
							<span class="image featured"><img src="images/loginpic.jpg" alt="" /></span>
							<h3>Manage Your Account</h3>
							<p>Manage your personal information, view your account balance, and deposit to your EZ Pass account.</p>
							<ul class="actions">
								<li><a href="login.jsp" class="button alt">Login</a></li>
							</ul>
						</section>

					</div>
					<div class="6u 12u(narrower)">

						<section class="box special">
							<span class="image featured"><img src="images/ezpasspic.jpg" alt="" /></span>
							<h3>EZ Pass</h3>
							<p>Your easy way inside the safest and fastest way to Bicol or Batangas.</p>
							<ul class="actions">
								<li><a href="ezdashboard.jsp" class="button alt">Go to Your Dashboard</a></li>
							</ul>
						</section>

					</div>
				</div>

			</section>

		<!-- Footer -->
			<footer id="footer">
				<ul class="copyright">
					<li>&copy; All rights reserved.</li>
				</ul>
				<%
				    if ((session.getAttribute("userid") != null) && (session.getAttribute("userlevel").equals("admin"))) {
				%>
				<br><br><a href="tables.jsp">Admin Panel</a>
				<%}
				%>
			</footer>
	</body>
</html>