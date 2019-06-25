
<%@page import="com.minds.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.minds.bean.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>

<body>
	<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Dbconnection db = new Dbconnection();
		Connection con = db.getConnection();
		Statement st = con.createStatement();
		ResultSet rs;
		rs = st.executeQuery("select * from patient where email='" + email + "' and password='" + password + "'");
		if (rs.next()) {
			String pname= rs.getString("pname");
			String email1= rs.getString("email");
			session.setAttribute("pname", pname);
			session.setAttribute("user", email1);
			//out.println("welcome " + userid);
			response.sendRedirect("PatientHome.jsp");

		} else {
			out.println("Invalid password <a href='PatientLogin.jsp'>try again</a>");
		}
	%>

</body>
</html>