<%-- <%@ include file="connect.jsp" %> --%>
<%@page import="com.minds.Dbconnection"%>
<%@page import="com.minds.bean.Doctor"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%

try
{
	String did=request.getParameter("did");
	int did1 =Integer.valueOf(did);
	String status="yes";
	Class.forName("com.mysql.jdbc.Driver");	
    Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/achievesecure","root","admin");
    Dbconnection db = new Dbconnection();
	Connection con = db.getConnection();
	Statement st = con.createStatement();
	ResultSet rs;
	String query1="update doctor set status='"+status+"' where did="+did1;
	st.executeUpdate(query1);
	
	/* connection.close(); */
	
	response.sendRedirect("Ta_Doctordetails.jsp");
}
catch(Exception e)
{
out.println(e);
}

%>
