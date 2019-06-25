<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--   Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!--  Site Metas -->
<title>Add Doctor</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!--    Site Icons -->
<link rel="shortcut icon" href="images/fevicon.ico.png"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<!--  Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!--  Site CSS -->
<link rel="stylesheet" href="style.css">
<!--  Colors CSS -->
<link rel="stylesheet" href="css/colors.css">
<!--  ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!--  Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!--    Custom CSS -->
<link rel="stylesheet" href="css/custom.css">
<!-- Modernizer for Portfolio -->
<script src="js/modernizer.js"></script>
<!--  [if lt IE 9] -->
</head>
<body class="clinic_version">
	<!-- LOADER -->
	<div id="preloader">
		<img class="preloader" src="images/loaders/heart-loading2.gif" alt="">
	</div>
	<!--    END LOADER -->
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
							<li><a class="active" href="DoctorHome.jsp">Home</a></li>
							<li><a data-scroll href="#about">About us</a></li>
							<li><a data-scroll href="DoctorLogin.jsp">Doctor</a></li>

							<li><a data-scroll href="TA.jsp">Trust Authority</a></li>
							<li><a data-scroll href="Cloud.jsp">Cloud</a></li>
							<li><a data-scroll href="DoctorHome.jsp">Logout</a></li>
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
			
		</div>
	
	</div>
	<!-- end section -->
	<div id="time-table" class="time-table-section">
		<div class="container">
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="row">
					<div class="service-time one" style="background: #0071d1;">
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
					<div class="service-time three" style="background: #0071d1;">
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
				<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
					<div class="inner-services">
						<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
							<div class="serv">
								<img src="images/post-up-care-use.jpg"
									style="width: 600px; height: 30;" alt="#" />

							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<h3>Doctor Registration</h3>
					<form action="adddoctoract.jsp" method="post" id="">

						<table width="400">
							<tr>
								<th height="50"><font color="black">User Name </th>
								<td width="218"><input id="name" name="docname"
									class="text" required="" /></td>
							</tr>
							<tr>
								<th height="43"><font color="black"> Email Address</th>
								<td><input id="email" name="docemail" class="text"
									required="" /></td>
							</tr>
							<tr>
								<th height="43"><font color="black">Password </th>
								<td width="218"><input type="password" id="password"
									name="password" class="text" required="" /></td>
							</tr>
							<tr>
								<th height="43"><font color="black">Date Of Birth</th>
								<td><input type="date" name="dob" style="text-align: right" 
									required=""></td>

							</tr>
							<tr>
								<th height="43"><font color="black">Select Gender</th>
								<td><select id="s1" name="gender" style="width: 170px;"
									class="text" required="">
										<option>--Select--</option>
										<option>MALE</option>
										<option>FEMALE</option>
								</select></td>
							</tr>
							<tr>
								<th height="43"><font color="black">state </th>
								<td><input id="state" name="state" class="text" required="" /></td>
							</tr>
							<tr>
								<th height="65"><font color="black">country</th>
								<td><input id="country" name="country" class="text" required="" /></textarea></td>
							</tr>
							<tr>
								<td height="43" rowspan="3">
									<p>&nbsp;</p>
								</td>
								<td align="left" valign="middle">
									<p>&nbsp;</p>
									<p>
										<input name="submit" type="submit" value="REGISTER" />
									</p>
									<div align="right"></div>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="copyright-area wow fadeIn">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="footer-text">
						<p>
							Copyright <a id="tw" href="https://themewagon.com/"
								target="_blank">Design by</a>
						</p>
					</div>
				</div>
				
			</div>
		</div>
	</div>

	<a href="#home" data-scroll class="dmtop global-radius"><i
		class="fa fa-angle-up"></i></a>

	<script src="js/all.js"></script>
	
	<script src="js/custom.js"></script>
	
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
</body>
</html>
