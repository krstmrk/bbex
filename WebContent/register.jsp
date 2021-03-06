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
	<script type="text/javascript">
		function validateForm() {
		var x = true;
		document.getElementById("username").innerHTML = "";
		document.getElementById("pass").innerHTML = "";
		document.getElementById("confpass").innerHTML = "<br>";
		document.getElementById("mobile").innerHTML = "";
		document.getElementById("home").innerHTML = "";
		document.getElementById("email").innerHTML = "";
		document.getElementById("zip").innerHTML = "<br>";
		
		if (document.forms["createaccount"]["username"].value.length < 4) {
			document.getElementById("username").innerHTML = " *must be 4 characters/longer";
			x = false;
		}
		if (document.forms["createaccount"]["pass"].value.length < 4) {
			document.getElementById("pass").innerHTML = " *must be 4 characters/longer";
			x = false;
		}
		if (document.forms["createaccount"]["confpass"].value != document.forms["createaccount"]["pass"].value) {
			document.getElementById("confpass").innerHTML = " *input correct password";
			x = false;
		}
		if (isNaN(document.forms["createaccount"]["mobile"].value)) {
			document.getElementById("mobile").innerHTML = " *number only";
			x = false;
		}
		if (isNaN(document.forms["createaccount"]["home"].value)) {
			document.getElementById("home").innerHTML = " *number only";
			x = false;
		}
		if (document.forms["createaccount"]["email"].value.indexOf('@') < 0) {
			document.getElementById("email").innerHTML = " *invalid email address";
			x = false;
		}
		if (isNaN(document.forms["createaccount"]["zip"].value)) {
			document.getElementById("zip").innerHTML = " *number only";
			x = false;
		}
		return x;
		}
	</script>
		<style>
			#username, #pass, #confpass, #mobile, #home, #email, #zip, #error {
				color:red;
			}
		</style>
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
				<div class="box">
					<h2>Create an Account</h2>
					<p id="errorp">Already have an account? <a href="login.jsp">Log In</a></p>
					<form  name="createaccount" action="registration.jsp" onsubmit="return validateForm()" method="post">
						<div class="row">
							<div class="6u 12u(mobilep)">
								<h4>Account Details</h4>
								<p id="indented">
									<input type="text" name="uname" value="" placeholder="Username" required><span id="username"></span><br>
									<input type="password" name="pass" value="" placeholder="Password" required><span id="pass"></span><br>
									<input type="password" name="confpass" value="" placeholder="Confirm Password"><span id="confpass"><br></span>
								</p>
								<h4>Personal Info</h4>
								<p id="indented">
									<input type="text" name="fname" value="" placeholder="First Name"><span id="firstname"></span><br>
									<input type="text" name="middlename" value="" placeholder="Middle Name"><span id="middlename"></span><br>
									<input type="text" name="lname" value="" placeholder="Last Name"><span id="lastname"></span><br>
									<input type="text" name="birthdate" value="" placeholder="Birthdate"><span id="birthdate"></span><br>
									<input type="text" name="sex" value="" placeholder="Sex">
								</p>
							</div>
							<div class="6u 12u(mobilep)">
								<h4>Contact Info</h4>
								<p id="indented">
									<input type="text" name="mobile" value="" placeholder="Mobile Number"><span id="mobile"></span><br>
									<input type="text" name="home" value="" placeholder="Home Number"><span id="home"></span><br>
									<input type="text" name="email" value="" placeholder="Email Address" required><span id="email"><br></span>
								</p>
								<h4>Address Details</h4>
								<p id="indented">
									<input type="text" name="street" value="" placeholder="Street"><br>
									<input type="text" name="city" value="" placeholder="City"><br>
									<input type="text" name="province" value="" placeholder="Province"><br>
									<input type="text" name="region" value="" placeholder="Region"><br>
									<input type="text" name="zip" value="" placeholder="Zip Code"><span id="zip"><br></span>
								</p>
							</div>
						</div>
						<div class="row uniform">
							<div class="12u">
								<ul class="actions align-center">
									<li><input type="button" onclick="javascript:window.location='index.jsp';" value="Cancel" /></li>
									<li><input type="submit"  onclick="scroll(0,0)" class="special" value="Create" /></li>
								</ul>
							</div>
						</div>
					</form>
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