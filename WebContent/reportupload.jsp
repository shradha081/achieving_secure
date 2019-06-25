
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.minds.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.minds.bean.Patient"%>



<!DOCTYPE html>
<html lang="en">
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- Site Metas -->
<title>Achieving Secure and Efficient Dynamic Searchable
	Symmetric Encryption over Medical Cloud Data</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- Site Icons -->
<link rel="shortcut icon" href="images/fevicon.ico.png"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="css/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">
<!-- Modernizer for Portfolio -->
<script src="js/modernizer.js"></script>
<!-- [if lt IE 9] -->
</head>
<body class="clinic_version">
	<!-- LOADER -->
	<div id="preloader">
		<img class="preloader" src="images/loaders/heart-loading2.gif" alt="">
	</div>
	<!-- END LOADER -->
	<header>
		<div class="header-top wow fadeIn">
			<div class="container-fluid">
				<h1>Achieving Secure and Efficient Dynamic Searchable Symmetric
					Encryption over Medical Cloud Data</h1>

			</div>
		</div>
		<div class="header-bottom wow fadeIn">
			<div class="container">
				<nav class="main-menu">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<i class="fa fa-bars" aria-hidden="true"></i>
						</button>
					</div>

					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li><a class="active" href="PatientHome.jsp">Home</a></li>
						
							<li><a data-scroll href="PatientLogin.jsp">Patient</a></li>
							<li><a data-scroll href="reportupload.jsp"> Report Upload</a></li>
						
							<li><a data-scroll href="Home.jsp">Logout</a></li>
						</ul>
					</div>
				</nav>
				<div class="serch-bar">
					<div id="custom-search-input">
						<div class="input-group col-md-12">
							<input type="text" class="form-control input-lg"
								placeholder="Search" /> <span class="input-group-btn">
								<button class="btn btn-info btn-lg" type="button">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div id="home" class="parallax first-section wow fadeIn"
		data-stellar-background-ratio="0.4"
		style="background-image: url('images/slider-bg.png');">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="text-contant">
						<h2>
							<span class="center"><span class="icon"> <img
									src="images/icon-logo.png" alt="#" /></span></span> <a href=""
								class="typewrite" data-period="2000"
								data-type='[ "Welcome to Life Care", "We Care Your Health", "We are Expert!" ]'>
								<span class="wrap"></span>
							</a>
						</h2>
					</div>
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->
	<div id="time-table" class="time-table-section">
		<div class="container">
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="row">
					<div class="service-time one" style="background: #2895f1;">
						<span class="info-icon"><i class="fa fa-ambulance"
							aria-hidden="true"></i></span> <img src="images/doctor_03.jpg" alt=""
							class="img-responsive img-rounded">

					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="row">
					<div class="service-time middle" style="background: #0071d1;">
						<span class="info-icon"><i class="fa fa-clock-o"
							aria-hidden="true"></i></span> <img src="images/doctor_02.jpg" alt=""
							class="img-responsive img-rounded">


					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="row">
					<div class="service-time three" style="background: #0060b1;">
						<span class="info-icon"><i class="fa fa-hospital-o"
							aria-hidden="true"></i></span> <img src="images/doctor_01.jpg" alt=""
							class="img-responsive img-rounded">

					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="service" class="services wow fadeIn">
		<div class="container">
			<div class="row">
				<form method="post" enctype="multipart/form-data"
					action="uploadServlet">
					<h2>
						<span>Patient upload report</span>
					</h2>
					<%
						try {

							String user = (String) session.getAttribute("user");
							/* 	 String catg= request.getParameter("category"); */

							Dbconnection db = new Dbconnection();
							Connection con = db.getConnection();
							Statement st = con.createStatement();
							ResultSet rs;
							/* String sql = "select * from recipedetails where category='"+catg+"'"; */
							String sql = "select * from patient where email='" + user + "'";
							rs = st.executeQuery(sql);
							while (rs.next()) {
					%>
					<div class="form-group">
						<%-- <label for="name">ID:</label> <input type="text" class="form-control"
				name="id" id="id" value="<%=rs.getInt(1)%>"> --%>
						<label for="name">PID:</label> <input type="text"
							class="form-control" name="id" id="id"
							value="<%=rs.getInt("id")%>">
					</div>
					<div class="form-group">
						<%-- <label for="name">Patient name:</label> <input type="text"
				class="form-control" name="name" id="category"
				value="<%=rs.getString(2)%>"> --%>
						<label for="pname">Patient name:</label> <input type="text"
							class="form-control" name="pname" id="pname"
							value="<%=rs.getString("pname")%>">
					</div>
					<div class="form-group">
						<%-- <label for="name">Patient Email:</label> <input type="text"
				class="form-control" name="email" id="name"
				value="<%=rs.getString(3)%>"> --%>
						<label for="email">Patient email:</label> <input type="text"
							class="form-control" name="email" id="email"
							value="<%=rs.getString("email")%>">
					</div>
					<div class="form-group">
						<label for="text">Attribute key:</label> <input type="text"
							class="form-control" name="attributekey" id="attributekey">
					</div>
					<div class="form-group">
						<label for="file">File Upload:</label> <input type="file"
							class="form-control" name="file">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>

				</form>
				<%
					}
						con.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</div>
		</div>
	</div>
	<div class="copyright-area wow fadeIn">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="footer-text">
						<p>
							© 2018. Distributed by <a id="tw" href="https://themewagon.com/"
								target="_blank">ThemeWagon</a>
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="social">
						<ul class="social-links">
							<li><a href=""><i class="fa fa-rss"></i></a></li>
							<li><a href=""><i class="fa fa-facebook"></i></a></li>
							<li><a href=""><i class="fa fa-twitter"></i></a></li>
							<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							<li><a href=""><i class="fa fa-youtube"></i></a></li>
							<li><a href=""><i class="fa fa-pinterest"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end copyrights -->
	<a href="#home" data-scroll class="dmtop global-radius"><i
		class="fa fa-angle-up"></i></a>
	<!-- all js files -->
	<script src="js/all.js"></script>
	<!-- all plugins -->
	<script src="js/custom.js"></script>
	<!-- map -->
	<!-- <script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script> -->
</body>
</html>
