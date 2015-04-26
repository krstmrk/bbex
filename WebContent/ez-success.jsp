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
				<div class="box">
							<%@ page import ="java.sql.*" %>
					<%
					    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
					%>
					You are not logged in<br/>
					<a href="index.jsp">Please Login</a>
					<%} else {
					      // create a java mysql database connection
							    Class.forName("com.mysql.jdbc.Driver");
							    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
							            "root", "pass");
							    Statement st = conn.createStatement();
							    ResultSet rs;
							    rs = st.executeQuery("select * from members where uname='" + session.getAttribute("userid") + "'");
					      // create the java mysql update preparedstatement
					      rs.next();
					      String query = "update members set balance = ? where uname = ?";
					      PreparedStatement preparedStmt = conn.prepareStatement(query);
					      double bal = Double.parseDouble(""+rs.getString(9));
					      double amount = Double.parseDouble(""+session.getAttribute("amt"));
					      String uname = "" + session.getAttribute("userid");
					      preparedStmt.setDouble(1, (amount+bal));
					      preparedStmt.setString(2, uname);
					 
					      // execute the java preparedstatement
					      preparedStmt.executeUpdate();
					       
					      conn.close();
						
					%>
					<header><h2>Payment Successful!</h2>
					<p>You have paid P<%= session.getAttribute("amt") %>. Go back to <a href="ezdashboard.jsp">Dashboard</a></p></header>
					<%
					    }
					%>
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


