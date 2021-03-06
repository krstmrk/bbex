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
				<header>
							<h2>EZ Pass Dashboard</h2>
				</header>
				<div class="row">
					<div class="6u 12u(narrower)">

						<section class="box">
							<p>This is your dashboard. Here you can view information
							 about your account. You can also deposit by selecting an
							  amout to the right.</p>
							<%@ page import ="java.sql.*" %>
							<%
							    Class.forName("com.mysql.jdbc.Driver");
							    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
							            "root", "pass");
							    Statement st = con.createStatement();
							    ResultSet rs;
							    rs = st.executeQuery("select * from members where uname='" + session.getAttribute("userid") + "'");
							    if (rs.next()) { %>
							    	<p>
							    	ID: <%= rs.getString(1) %><br>
							    	Username: <%= rs.getString(5) %><br>
							    	Email Address: <%= rs.getString(4) %><br>
							    	First Name: <%= rs.getString(2) %><br>
							    	Last Name: <%= rs.getString(3) %><br>
							    	Registration Date: <%= rs.getString(7) %><br><br>
									Last Widthdraw:<br>
									Last Deposit:<br><br>
							    	Balance: P<%= rs.getString(9) %><br>
							    	</p>
							    <%} else {
							    	response.sendRedirect("login.jsp");
							    }
							%>
						</section>

					</div>
					<div class="6u 12u(narrower)">

						<section class="box">
							<span class="image featured"><img src="images/loginpic.jpg" alt="" /></span>
							<h3>Deposit Now</h3>
							<form action="ez-checkout.jsp" method="POST">
							<div class="6u 12u(narrower)">
								<input type="radio" name="amount" id="500" value="500" checked>
								<label for="500">P500.00</label>
							</div>
							<div class="6u 12u(narrower)">
								<input type="radio" name="amount" id="1000" value="1000">
								<label for="1000">P1000.00</label>
							</div>
							<div class="6u 12u(narrower)">
								<input type="radio" name="amount" id="1500" value="1500">
								<label for="1500">P1500.00</label>
							</div>
							<div class="6u 12u(narrower)">
								<input type="radio" name="amount" id="-1000" value="-1000">
								<label for="-1000">P-1000.00</label>
							</div>
							<input type="submit" class="alt" value="Submit">
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