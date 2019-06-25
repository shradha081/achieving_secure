
<%@page import="com.minds.Dbconnection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.minds.bean.Trusted" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</head>
<body>
<%@ page import ="java.sql.*" %>
<%
String user = request.getParameter("username");    
String pwd = request.getParameter("password");
   /*  Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/achievesecure", "root", "admin"); */
    
   Dbconnection db = new Dbconnection();
   Connection con = db.getConnection();
   Statement st = con.createStatement();
   ResultSet rs;
   rs = st.executeQuery("select * from trusted where username='" + user + "' and password='" + pwd + "'");
   if (rs.next()) {
          session.setAttribute("user", user);
        //out.println("welcome " + userid);
        response.sendRedirect("TaHome.jsp");
    	
    } else {
        out.println("Invalid password <a href='TA.jsp'>try again</a>");
    }
    %>
</body>
</html>