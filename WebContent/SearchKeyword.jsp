<!DOCTYPE html>
<%@page import="com.minds.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<jsp:useBean id="u" class="com.minds.bean.Patient"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<head>
<!--  -->
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
  <!--  Site Icons -->
   <link rel="shortcut icon" href="images/fevicon.ico.png" type="image/x-icon" />
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

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
                        <li><a class="active" href="DoctorHome.jsp">Home</a></li>
                      <!--   <li><a data-scroll href="DoctorLogin.jsp">Doctor Login</a></li> -->
                         <li><a data-scroll href="SearchKeyword.jsp"> Search Keyword</a></li>
                         <li><a data-scroll href="accessrequest.jsp"> Access Request</a></li>
                         
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
       <br><br><br><br> <br><br><br>
    <div id="home" class="services wow fadeIn" data-stellar-background-ratio="0.4" style="background-image:url('images/service-bg.png');"> 
      
         <div class="container">
            <div class="row">
               <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
               
     
 <div class="header">
     <div class="w3-top">
<!-- <div class="jumbotron">  -->   
  <div class="row content">
  <!--   <div class="col-sm-2 ">
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div> -->
    <div class="col-sm-12 text-left"> 
      <center><b><h2>Search Keyword</h2></b></center>
  <form class="form-horizontal" action="Searchdetails.jsp">
    <div class="form-group">
      <label class="control-label col-sm-4" for="attributekey">Enter attributekey:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="attributekey" placeholder="Enter attributekey" name="attributekey" required>
      </div>
    </div>
     
    <div class="form-group">        
      <div class="col-sm-offset-4 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
         <button type="submit" class="btn btn-default">Cancel</button>
      </div>
     </div>     <br><br><br><br> <br><br><br>     <br><br><br><br> <br><br><br>     <br><br><br><br> <br><br><br>     <br><br><br><br> <br><br><br>     <br><br><br><br> <br><br><br>
  </form>
  </div>
    <div class="col-sm-2 ">
     
    </div>
  </div>
</div>
</div>
</div></div></div></div>
     
      <div class="copyright-area wow fadeIn">
         <div class="container">
            <div class="row">
               <div class="col-md-8">
                  <div class="footer-text">
                     <p>© 2018. Distributed by <a id="tw" href="https://themewagon.com/" target="_blank">ThemeWagon</a></p>
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