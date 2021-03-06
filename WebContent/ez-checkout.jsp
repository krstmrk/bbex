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
			<section id="main" class="container 75%">
				
				<div class="row">
					<div class="8u">

						<section class="box">
						
							<h2>Checkout</h2>
							<form action="ez-success.jsp" method="POST">
							<p>Billing Address</p>
							<p id="indented">
							First Name: <input type="text" name="firstname" value=""><br>
							Last Name: <input type="text" name="lastname" value=""><br>
							Email Address: <input type="text" name="email" value=""><br>
							Contact Number: <input type="text" name="contact" value=""><br>
							Address:<br>
							<textarea name="address" value=""></textarea><br>
							Postal Code: <input type="text" name="postal" value="">
							</p>
							<p>Payment Method</p>
								<div class="12u 12u(narrower)">
									<input type="radio" name="paymethod" id="credit" value="credit" checked>
									<label for="credit">Credit Card Payment</label>
								</div>
								<div class="12u 12u(narrower)">
									<input type="radio" name="paymethod" id="paypal" value="paypal">
									<label for="paypal">Paypal Express Checkout</label>
								</div>
							<p>Review Your Order</p>
							<% String amt = request.getParameter("amount");
							session.setAttribute("amt", amt); %>
							<p id="indented">Deposit - P<%= session.getAttribute("amt") %></p>
							<input type="submit" value="Submit">
							</form>
						</section>

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