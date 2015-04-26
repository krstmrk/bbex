		
        
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
					<h2>Members</h2>
					<%@ page import ="java.sql.*" %>
					<% 
			                      
			            Class.forName("com.mysql.jdbc.Driver");
					    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
					            "root", "pass");
					    Statement st = con.createStatement();
					    ResultSet resultset;
					    resultset = st.executeQuery("select * from members");
			        %>
			
			        <TABLE BORDER="1">
			            <TR>
			                <TH>ID</TH>
			                <TH>first_name</TH>
			                <TH>last_name</TH>
			                <TH>email</TH>
			                <TH>uname</TH>
			                <TH>pass</TH>
			                <TH>regdate</TH>
			                <TH>permission</TH>
			                <TH>balance</TH>
			            </TR>
			            <% while(resultset.next()){ %>
			            <TR>
			                <TD> <%= resultset.getString(1) %></td>
			                <TD> <%= resultset.getString(2) %></TD>
			                <TD> <%= resultset.getString(3) %></TD>
			                <TD> <%= resultset.getString(4) %></TD>
			                <TD> <%= resultset.getString(5) %></TD>
			                <TD> <%= resultset.getString(6) %></TD>
			                <TD> <%= resultset.getString(7) %></TD>
			                <TD> <%= resultset.getString(8) %></TD>
			                <TD> <%= resultset.getString(9) %></TD>
			            </TR>
			            <% } %>
			        </TABLE>
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


        