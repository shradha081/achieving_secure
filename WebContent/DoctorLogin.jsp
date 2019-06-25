<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">

<title>Achieving Secure and Efficient Dynamic Searchable
	Symmetric Encryption over Medical Cloud Data</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<link rel="shortcut icon" href="images/fevicon.ico.png"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="style.css">

<link rel="stylesheet" href="css/colors.css">

<link rel="stylesheet" href="css/versions.css">

<link rel="stylesheet" href="css/responsive.css">

<link rel="stylesheet" href="css/custom.css">

<script src="js/modernizer.js"></script>

</head>
<body class="clinic_version">

	<div id="preloader">
		<img class="preloader" src="images/loaders/heart-loading2.gif" alt="">
	</div>

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
							<li><a class="active" href="Home.jsp">Home</a></li>
							<!-- <li><a data-scroll href="DoctorLogin.jsp">Doctor Login</a></li> -->

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
				<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
					<div class="inner-services">
						<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
							<div class="serv">

								<span class="icon-service"><img
									src="images/service-icon3.png" alt="#" /></span>
								<h4>PREMIUM FACILITIES</h4>
								<p>Lorem Ipsum is simply dummy text of the printing.</p>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
							<div class="serv">

								<span class="icon-service"><img
									src="images/service-icon4.png" alt="#" /></span>
								<h4>LARGE LABORATORY</h4>
								<p>Lorem Ipsum is simply dummy text of the printing.</p>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">

							<form action="DoctorLoginCheck.jsp" method="post" id="">
								<h2>
									<span>Doctor Login</span>
								</h2>

								<table width="400">
									<tr>
										<th height="43"><font color="black">Email Address</th>
										<td><input id="email" name="docemail" class="text" placeholder="Email"
											required="" /></td>
									</tr>
									<tr>
										<th height="43"><font color="black">Password </th>
										<td width="218px"><input type="password" id="password" placeholder="password"
											name="password" class="text" required="" /></td>
									</tr>

									<tr>
										<td height="43" rowspan="3">
											<p>&nbsp;</p>
										</td>
										<td align="left" valign="middle">
											<p>&nbsp;</p> <input name="submit" type="submit"
											value="Submit Form" /> <input name="submit" type="submit"
											value="RESET Form" />


											<div align="right"></div>
										</td>
									</tr>
								</table>
							</form>
							<h1>
								<a href="adddoctor.jsp">Register</a>
							</h1>
						</div>
					</div>

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

	<a href="#home" data-scroll class="dmtop global-radius"><i
		class="fa fa-angle-up"></i></a>

	<script src="js/all.js"></script>
	
	<script src="js/custom.js"></script>
	
	
</body>
</html>
