<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="com.minds.Dbconnection"%>
<%@page import="com.minds.bean.Doctor"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<jsp:useBean id="u" class="com.minds.bean.Doctor"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
<html lang="en">
<head>

<%
	String email = (String) session.getAttribute("user");
%>
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
                      <li><a data-scroll href="Ta_Doctordetails.jsp">Authorize key</a></li>
                         <li><a data-scroll href="DocRequest.jsp">Doc Req</a></li>
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

		<br>	
<br><br><br><br><br><br><br><br><br>	

	
<center><h2>Doctor Request </h2></center>
	<table class="table table-dark table-hover">

		<thead>
			<tr>
				<th>id</th>
				<th>pid</th>
				<th>name</th>
				<th>time</th>
				<th>filename</th>
				<th>attributekey</th>
				<th>docname</th>
				<th>docemail</th>
				<th>secretkey</th>
				<th>status</th>
				<th>Content</th>
				<th>Response</th>
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
					String sql = "select * from request";
					rs = st.executeQuery(sql);
					while (rs.next()) {
			%>


			<tr>
				<td data-order="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></td>
				<td data-order="<%=rs.getInt(2)%>"><%=rs.getInt(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(6)%></td>
				<td data-filter="<%=rs.getString(5)%>"><%=rs.getString(5)%></td>
				<td data-search="<%=rs.getString(7)%>"><%=rs.getString(7)%></td>
				<td data-search="<%=rs.getString(8)%>"><%=rs.getString(8)%></td>
				<td data-search="<%=rs.getString(9)%>"><%=rs.getString(9)%></td>
				<td data-search="<%=rs.getString(10)%>"><%=rs.getString(10)%></td>
				<td data-search="<%=rs.getString(11)%>"><%=rs.getString(11)%></td>
				<td><a href='ta_statusdoctor1.jsp?id=<%=rs.getInt(1)%>'>Response</a></td>
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
				
