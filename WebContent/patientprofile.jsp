<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="com.minds.Dbconnection"%>
<%@page import="com.minds.bean.Patient"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<jsp:useBean id="u" class="com.minds.bean.Patient"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%
	String id = request.getParameter("id");
	String email = (String) session.getAttribute("user");
%>
<html lang="en">

<head>
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
<link rel="stylesheet" href="style.css">
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
							<li><a class="active" href="Home.jsp">Home</a></li>
							<li><a data-scroll href="reportupload.jsp">Report Upload</a></li>
							
						
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
		style="background-image: url('images/service-bg.png');">

		<br>
		<br>
		<br>
		<div class="container">
			<!DOCTYPE html>
			<%@page import="com.minds.Dbconnection"%>
			<%@page import="java.sql.ResultSet"%>
			<%@page import="java.sql.Statement"%>
			<%@page import="java.sql.DriverManager"%>
			<%@page import="java.sql.Connection"%>
			<%
				String usn = request.getParameter("usn");
			%>

			<html lang="en">
<head>
<title>Student Result</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="js/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="js/buttons.dataTables.min.css">


<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

.labelName {
	color: #111;
	font-weight: bolder;
	width: 50%;
	border: 1px #ddd;
	border-top-width: 0px;
	border-left-width: 0px;
	border-bottom-width: 0px;
	border-right-width: 0px;
}
</style>
</head>
<body>

	<div class="jumbotron jumbotron"
		style="text-align:; background-image: url(images/clinic_01.jpg); background-size: cover; height: 20%;">
		<div class="container-fluid text-center">

			<div class="row content">

				<div class="col-sm-2 ">
					<!--  <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p> -->
				</div>

				<div class="col-sm-8 text-left">


					<br> <br>
					<div
						class="table-responsive-xl table-responsive-sm table-responsive-md table-responsive-lg">
						<table id="example" class="display nowrap" style="width: 100%">
							<thead>
								<tr>
									<td>Report</td>
									<td>Details</td>
								</tr>
							</thead>
							<tbody>
								<%
									try {

										Dbconnection db = new Dbconnection();
										Connection con = db.getConnection();
										Statement st = con.createStatement();
										ResultSet rs;
										String sql = "select * from upload where id='" + id + "'";
										rs = st.executeQuery(sql);
										while (rs.next()) {
								%>
								<tr>

									<th class="labelName">Patient Id</th>
									<th class="labelName"><%=rs.getString("id")%></th>

								</tr>
								<tr>

									<th class="labelName">Patient name</th>
									<th class="labelName"><%=rs.getString("pname")%></th>

								</tr>
								<tr>

									<th class="labelName">Patient Email</th>
									<th class="labelName"><%=rs.getString("email")%></th>

								</tr>

								<tr>
									<th class="labelName">attributekey</th>
									<th class="labelName"><%=rs.getString("attributekey")%></th>

								</tr>
								<tr>
									<th class="labelName">filename</th>
									<th class="labelName"><%=rs.getString("filename")%></th>

								</tr>


								<%
									}
										con.close();
									} catch (Exception e) {
										e.printStackTrace();
									}
								%>
							</tbody>


						</table>
					</div>
				</div>


				<div class="col-sm-2 ">
					<!--  <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p> -->
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript" language="javascript"
		src="js/jquery-1.12.4.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<script type="text/javascript" language="javascript"
		src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/buttons.flash.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/jszip.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/pdfmake.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/vfs_fonts.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/buttons.html5.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/buttons.print.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {

			console.log("now setting table");
			$('#example').DataTable({
				dom : 'Bfrtip',
				"order" : [],
				lengthMenu : [ [ -1 ], [ 'Show all' ] ],
				buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
			});
		});
	</script>
</body>
			</html>

			<%-- <table id="example" class="display" style="height:100% width:100%">

<thead>
<tr>
<th class="labelName">Particular </th>
<th class="labelName">Information</th>
</tr>
</thead>
<tbody>
<%
try {
	String user = (String) session.getAttribute("user");
	Dbconnection db = new Dbconnection();
	Connection con = db.getConnection();
	Statement st = con.createStatement();
	ResultSet rs;
	String sql = "select * from uploadreport where id='"+id+"'";
	rs = st.executeQuery(sql);
	while (rs.next()) {
%>
<tbody>
<tr>

<th class="labelName">id: </th>
<th class="labelName"><%=rs.getString("id")%></th>

</tr><tr>
	<th class="labelName">PName: </th>
	<th class="labelName"><%=rs.getString("pname")%></th>

</tr><tr>
	<th class="labelName">Email: </th>
	<th class="labelName"><%=rs.getString("email")%></th>

</tr><tr>
	<th class="labelName">Attribute Key: </th>
	<th class="labelName"><%=rs.getString("attributekey")%></th>

</tr>
<tr>
	<th class="labelName">Upload Report:</th>
	<th class="labelName"><%=rs.getString(5)%></th>

</tr>
         
     
<%
}
	con.close();
} catch (Exception e) {
	e.printStackTrace();
}
%>
</tbody>
	

</table>	 --%>
		</div>
	</div>


	<script type="text/javascript" language="javascript"
		src="js/jquery-1.12.4.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<script type="text/javascript" language="javascript"
		src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/buttons.flash.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/jszip.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/pdfmake.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/vfs_fonts.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/buttons.html5.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/buttons.print.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {

			console.log("now setting table");
			$('#example').DataTable({
				dom : 'Bfrtip',
				"order" : [],
				lengthMenu : [ [ -1 ], [ 'Show all' ] ],
				buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
			});
		});
	</script>

	<!-- end copyrights -->
	<a href="#home" data-scroll class="dmtop global-radius"><i
		class="fa fa-angle-up"></i></a>
	<!-- all js files -->
	<script src="js/all.js"></script>
	<!-- all plugins -->
	<script src="js/custom.js"></script>
	<!-- map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
</body>
</html>


