<%-- <%@ include file="connect.jsp" %> --%>
<%@page import="com.minds.Mail"%>
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
	String did=request.getParameter("id");
	int did1 =Integer.parseInt(did);
	String status="yes";
	
    Dbconnection db = new Dbconnection();
	Connection con = db.getConnection();
	Statement st = con.createStatement();
	ResultSet rs;
	String query1="update request set status='"+status+"' where id="+did1;
	st.executeUpdate(query1);
	
	Connection con1 = db.getConnection();
	Statement st1 = con1.createStatement();
	ResultSet rs1;
	String query2="select * from request where id="+did1;
	rs1=st1.executeQuery(query2);
	while (rs1.next()){
		String filename=rs1.getString("filename");
		
		String docemail=rs1.getString("docemail");
		String secret_key=rs1.getString("secret_key");
		 Mail m= new Mail();
	      m.secretMail(secret_key,filename, docemail);
	}
	/* connection.close(); */
	
	response.sendRedirect("Home.jsp");
}
catch(Exception e)
{
out.println(e);
}

%>
