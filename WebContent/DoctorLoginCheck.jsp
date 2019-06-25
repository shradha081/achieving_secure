<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.minds.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.minds.bean.Doctor"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>

<body>
	<%


		String docemail = request.getParameter("docemail");
		String password = request.getParameter("password");

        String status="yes"; 
		Dbconnection db = new Dbconnection();
		Connection con = db.getConnection();
		Statement st = con.createStatement();
		ResultSet rs;

		rs = st.executeQuery("select * from doctor where  docemail='" + docemail + "' and password='" + password + "'  and status='"+status+"'"); 
		if (rs.next()) {
		
		 String docname=rs.getString("docname");
	
	session.setAttribute("docemail", docemail);
	session.setAttribute("docname", docname);
			
			response.sendRedirect("DoctorHome.jsp");

		} else {
		 out.println("Invalid password <a href='DoctorLogin.jsp'>try again</a>");
	
		}
	%>

</body>
</html>
