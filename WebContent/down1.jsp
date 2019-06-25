 <%@page import="com.minds.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

           
<!DOCTYPE html>
<html lang="en">
   <!-- Basic -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!-- Mobile Metas -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- Site Metas -->
   <title>Achieving Secure and Efficient Dynamic Searchable Symmetric Encryption over Medical Cloud Data</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <!-- Site Icons -->
   <link rel="shortcut icon" href="images/fevicon.ico.png" type="image/x-icon" />
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
               <h1>Achieving Secure and Efficient Dynamic Searchable Symmetric Encryption over Medical Cloud Data</h1>
              
            </div>
         </div>
         <div class="header-bottom wow fadeIn">
            <div class="container">
               <nav class="main-menu">
                  <div class="navbar-header">
                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                  </div>
				  
                  <div id="navbar" class="navbar-collapse collapse">
                     <ul class="nav navbar-nav">
                        <li><a class="active" href="Home.jsp">Home</a></li>
                      <!--   <li><a data-scroll href="DoctorLogin.jsp">Doctor Login</a></li> -->
                         <li><a data-scroll href="SearchKeyword.jsp"> search keyword</a></li>
                         <li><a data-scroll href="accessrequest.jsp"> accessreq</a></li>
                         
                     <!--    <li><a data-scroll href="appointment.jsp">Sent Query's</a></li>
                        <li><a data-scroll href="viewreply.jsp">View Doctor Reply's</a></li> -->
                        <li><a data-scroll href="Home.jsp">Logout</a></li>
						
                     </ul>
                  </div>
               </nav>
               <div class="serch-bar">
                  <div id="custom-search-input">
                     <div class="input-group col-md-12">
                        <input type="text" class="form-control input-lg" placeholder="Search" />
                        <span class="input-group-btn">
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
           <%
           if (request.getParameter("msg") != null) {
        %>
        <script>alert('Verification Successfully');</script>
        <%
            }
        %>
        <div id="home" class="services wow fadeIn"
		data-stellar-background-ratio="0.4"
		style="background-image: url('images/service-bg.png');">
  
  <div class="container">
  
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <br><br><br><br><br><br><br><br><br>   <br><h2>Send Request for File Access</h2><br>
         <div class="clr"></div>
         <!---Start Body --->
       
         <table border="2" style="text-align: center;margin-left: 10px">
                            <tr>
                                <th style="text-align: center;width: 30px; font-size: 16px; color: black ">ID</th>
                                <th style="text-align: center;width: 300px; font-size: 16px; color: black">File Name</th>
                                <th style="text-align: center;width: 100px; font-size: 16px; color: black">patient name</th>
                                <th style="text-align: center;width: 200px; font-size: 16px; color: black">Date</th>
                                <th style="text-align: center;width: 100px; font-size: 16px; color: black">Send Request</th>
                            </tr>
                            <tr>
                                <%
                                
                                String  secret_key=(String)session.getAttribute("secret_key");
                              /*   System.out.println("Patient Name"+secret_key); */
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    try {
                                        con = Dbconnection.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from upload  where secret_key='"+secret_key+"' "); 
                                        /* rs = st.executeQuery("select * from upload "); */
                                      while(rs.next())
                                            
                                        {%>
                                        <td style=" font-size: 14px; color: black"><%=rs.getInt("id")%></td>     
                                        <td style=" font-size: 14px; color: black"><%=rs.getString("filename")%></td>     
                                        <td style=" font-size: 14px; color: black"><%=rs.getString("pname")%></td>
                                        <td style=" font-size: 14px; color: black"><%=rs.getString("time")%></td>
										<td> <a href="Download1?id=<%=rs.getInt(1)%>"><font style="color: black; font-size: 16px">Download</a></font> </td>
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
       </div></div></div>
    
	  <!-- end patient section -->
	
     
      <div class="copyright-area wow fadeIn">
         <div class="container">
            <div class="row">
               <div class="col-md-8">
                  <div class="footer-text">
                     <p>Â© 2018. Distributed by <a id="tw" href="https://themewagon.com/" target="_blank">ThemeWagon</a></p>
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
      <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
      <!-- all js files -->
      <script src="js/all.js"></script>
      <!-- all plugins -->
      <script src="js/custom.js"></script>
      <!-- map -->
     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
   </body>
</html>  