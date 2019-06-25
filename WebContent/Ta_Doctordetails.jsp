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
				<!-- <div class="right-header">
                  <div class="header-info">
                     <div class="info-inner">
                        <span class="icontop"><img src="images/phone-icon.png" alt="#"></span>
                        <span class="iconcont"><a href="tel:800 123 456">800 123 456</a></span>	
                     </div>
                     <div class="info-inner">
                        <span class="icontop"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                        <span class="iconcont"><a data-scroll href="mailto:info@yoursite.com">info@Lifecare.com</a></span>	
                     </div>
                     <div class="info-inner">
                        <span class="icontop"><i class="fa fa-clock-o" aria-hidden="true"></i></span>
                        <span class="iconcont"><a data-scroll href="#">Daily: 7:00am - 8:00pm</a></span>	
                     </div>
                  </div>
               </div> -->
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
		<br>

		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br><CENTER><h1>Doctor Details</h1></CENTER>
		<table class="table table-dark table-hover">
			<!-- <table id="example" class="display" style="width: 100%">
 -->
			<thead>
				<tr>
					<th>dId</th>
					<th>NAME</th>
					<th>Email</th>
					<th>Password</th>
					<th>Gender</th>
					<th>State</th>
					<th>Country</th>
					<th>Status</th>
					<th>Activate</th>
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
						String sql = "select * from doctor";
						rs = st.executeQuery(sql);
						while (rs.next()) {
				%>


				<tr>
					<td data-order="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td data-filter="<%=rs.getString(5)%>"><%=rs.getString(5)%></td>
					<td data-search="<%=rs.getString(6)%>"><%=rs.getString(6)%></td>
					<td data-search="<%=rs.getString(7)%>"><%=rs.getString(7)%></td>
					<td data-order="<%=rs.getString(9)%>"><%=rs.getString(9)%></td>
					<td> <a href="ta_statusdoctor.jsp?did=<%=rs.getInt(1)%>">AC </a> </td>

				

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


<div class="copyright-area wow fadeIn">
         <div class="container">
            <div class="row">
               <div class="col-md-8">
                  <div class="footer-text">
                     <p>© 2018. Distributed by <a id="tw" href="https://themewagon.com/" target="_blank">ThemeWagon</a></p>
                  </div>
               </div>
              
            </div>
         </div>
      </div>
      <!-- end copyrights -->
      <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
      <!-- all js files -->
      <script src="js/all.js"></script>
      <!-- all plugins -->
      <script src="js/custom.js"></script>
      <!-- map -->
     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
   </body>
</html> 

