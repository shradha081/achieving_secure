<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%@page import="com.minds.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<head>
<!--  -->
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
<!--  Site Icons -->
<link rel="shortcut icon" href="images/fevicon.ico.png"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<!--  Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!--    Site CSS -->
<link rel="stylesheet" href="style.css">
<!--  Colors CSS -->
<link rel="stylesheet" href="css/colors.css">
<!--    ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!--  Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!--  Custom CSS -->
<link rel="stylesheet" href="css/custom.css">
<!--    Modernizer for Portfolio -->
<script src="js/modernizer.js"></script>
<!--    [if lt IE 9] -->
</head>

<%
	String email = (String) session.getAttribute("user");
%>

<body class="clinic_version">
	<!-- LOADER -->
	<div id="preloader">
		<img class="preloader" src="images/loaders/heart-loading2.gif" alt="">
	</div>
	<!--  END LOADER -->
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
							<li><a class="active" href="patienthome.jsp">Home</a></li>
							<li><a data-scroll href="reportupload.jsp">Report Upload</a></li>
				
							<!-- <li><a data-scroll href="viewreply.jsp">View Doctor Reply's</a></li> -->
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
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div id="home" data-stellar-background-ratio="0.4"
		style="background-image: url('images/service-bg.png');">
		<div id="service" class="parallax wow fadeIn">
			<div class="container-center">

				<br> <br> <br> <br>
				<CENTER>
					<h2>Patient Report Details</h2>
				</CENTER>
				<table class="table table-dark table-hover">

					<thead>
						<tr>
							<th>Patient Id</th>
							<th>Patient name</th>
							<th>Patient email</th>
							<th>Attribute</th>
							<th>filename</th>
							<!-- <th>Report</th> -->
							<th>Time</th>
							<th>secretKey</th>
							<th>status</th>
							<th>ename</th>
							<th>eemail</th>
							<th>eattributekey</th>
							<th>Details</th>
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
								String sql = "select * from upload";
								rs = st.executeQuery(sql);
								while (rs.next()) {
						%>


						<tr>
							<td data-order="<%=rs.getInt(2)%>"><%=rs.getInt(2)%></td>
							<td data-order="<%=rs.getString(3)%>"><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<%--  <td ><%=rs.getString(7)%></td>  --%>
							<td><%=rs.getString(8)%></td>
							<td><%=rs.getString(9)%></td>
							<td><%=rs.getString(11)%></td>
							<td><%=rs.getString(12)%></td>
							<td><%=rs.getString(13)%></td>
							<td><%=rs.getString(14)%></td>
							<td><a href='patientprofile.jsp?id=<%=rs.getInt(1)%>'>Details</a></td>
						</tr>
						<%
							}
								con.close();
							} catch (Exception ex) {
								System.out.println(ex);
							}
						%>
					</tbody>

					<tfoot>

					</tfoot>
				</table>

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
		<!--   <!-- end copyrights -->
		<a href="#home" data-scroll class="dmtop global-radius"><i
			class="fa fa-angle-up"></i></a>
		<!--  all js files -->
		<script src="js/all.js"></script>
		<!--   all plugins -->
		<script src="js/custom.js"></script>
		<!--    map -->
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
	</div>
</body>
</html>