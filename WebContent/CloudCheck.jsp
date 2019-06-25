<%@page import="com.minds.Dbconnection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.minds.bean.Cloud"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ page import="java.sql.*"%>
<%
	String user = request.getParameter("username");
	String pwd = request.getParameter("password");

	Dbconnection db = new Dbconnection();
	Connection con = db.getConnection();
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from cloud where username='" + user
			+ "' and password='" + pwd + "'");
	if (rs.next()) {
		session.setAttribute("user", user);
		//out.println("welcome " + userid);
		response.sendRedirect("CHome.jsp");

	} else {
		out.println("Invalid password <a href='Cloud.jsp'>try again</a>");
	}
%>
