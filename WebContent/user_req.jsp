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
							<li><a class="active" href="patienthome.jsp">Home</a></li>
							<li><a data-scroll href="reportupload.jsp">Report Upload</a></li>
							<li><a data-scroll href="appointment.jsp">View Report</a></li>
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
	<!-- <div id="home" class="parallax first-section wow fadeIn"
		data-stellar-background-ratio="0.4"
		style="background-image: url('images/service-bg.png');"> -->
		<!--  <div id="service" class="parallax wow fadeIn"> -->
		<!-- <div class="container"> -->

		<br>
		<br>
		<br>
		<br>
		<table class="table table-dark table-hover">
			<!-- <table id="example" class="display" style="width: 100%">
 -->
			<thead>
				<tr>
					<th>Id</th>
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
					<td> <a href="ta_statusdoctor.jsp?id=<%=rs.getInt(1)%>">AC </a> </td>

					<%-- <td><a href='ta_statusdoctor.jsp?id=<%=rs.getInt(1)%>'>Activate</a></td> --%>
					<%--  <td><a href='t?id=<%=rs.getInt(1)%>'>Activate</a> --%>
					<%--   <td data-search="<%=rs.getString(8)%>"><%=rs.getString(8)%></td>
                     <td data-order="<%=rs.getString(9)%>"><%=rs.getString(9)%></td> 
                    <td data-order="<%=rs.getString(10)%>"><%=rs.getString(10)%></td>  
               
           
                 <%-- <td><a href='subjectmappingedit.jsp?id=<%=rs.getInt(1)%>'>Update</a></td> --%>

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

<%-- 
<%@page import="com.minds.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
<title>User requests</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
                <%
           if (request.getParameter("Msgac") != null) {
        %>
        <script>alert('Secret key Sent to user Mail ID');</script>
        <%
            }
        %>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1>Multiple Keyword Searching Approach over Encrypted Data on Cloud</h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
       <ul>
         <li><a href="pro_home.jsp"><span>Data Owner Home</span></a></li>
          <li><a href="file_upload.jsp"><span>File Upload </span></a></li>
          <li><a href="file_de.jsp"><span>Uploaded File Details</span></a></li>
       <!--   <li><a href="file_update.jsp"><span>File Update</span></a></li> -->
           <li class="active"><a href="user_req.jsp"><span>User Request</span></a></li>
          <li><a href="index.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <!-- <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="335" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="335" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="335" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div> -->
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
            <br><h2>User Request</h2><br>
         <div class="clr"></div>
         <!---Start Body --->
         <table border="1" style="text-align: center;margin-left: 0px">
                            <tr>
                                <th style="text-align: center;width: 30px; font-size: 16px; color: #0096da ">ID</th>
                                <th style="text-align: center;width: 300px; font-size: 16px; color: #0096da">Name</th>
                                <th style="text-align: center;width: 100px; font-size: 16px; color: #0096da">Email</th>
                                <th style="text-align: center;width: 100px; font-size: 16px; color: #0096da">State</th>
                                <th style="text-align: center;width: 100px; font-size: 16px; color: #0096da">Country</th>
                                <th style="text-align: center;width: 100px; font-size: 16px; color: #0096da">Title</th>
                                <th style="text-align: center;width: 100px; font-size: 16px; color: #0096da">Response</th>
                            </tr>
                            <tr>
                                <%
//                                String panme=(String) session.getAttribute("sssname");
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    try {
                                        con = Dbconnection.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from request where status='No'");
                                        while(rs.next())
                                            
                                        {%>
                                        <td style=" font-size: 14px; color: #666464"><%=rs.getString("id")%></td>     
                                        <td style=" font-size: 14px; color: #666464"><%=rs.getString("name")%></td>     
                                        <td style=" font-size: 14px; color: #666464"><%=rs.getString("email")%></td>
                                        <td style=" font-size: 14px; color: #666464"><%=rs.getString("state")%></td>
                                        <td style=" font-size: 14px; color: #666464"><%=rs.getString("country")%></td>
                                        <td style=" font-size: 14px; color: #666464"><%=rs.getString("title")%></td>
                                        <td> <a href="mail.jsp?<%=rs.getString("id")%>"><font style="color: green; font-size: 16px">Send</a></font> </td>
                                        <tr />
                                        <%
                                      
                                        
                                        } 
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
                        </table>
         <!---End Body --->
      <br><br><br><br></div>
     </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
           <li><a href="pro_home.jsp">Data Owner Home</a></li>
            <li><a href="file_upload.jsp">File Upload to Cloud</a></li>
            <li><a href="file_de.jsp">Uploaded File Details</a></li>
             <li><a href="user_req.jsp"><span>User Request</span></a></li>
            <!-- <li><a href="file_update.jsp">File Update</a></li> -->
            <li><a href="index.jsp">Logout</a></li>
            <!-- <li><a href="ahome.jsp">Home</a></li>
            <li><a href="pro_de.jsp">Data Provider Details</a></li>
            <li><a href="user_de.jsp">User Details</a></li>
            <li><a href="user_req.jsp">User Request</a></li>
            <li><a href="file_ac.jsp">Download Details</a></li>
            <li><a href="index.jsp">Logout</a></li> -->
          </ul>
        </div>
        
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="footer">
    <div class="footer_resize">
      <p class="lf">Copyright &copy; <a href="#"></a></p>
      <p class="rf">Design by <a target="_blank" href=""></a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
 --%>