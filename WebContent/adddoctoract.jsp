
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.minds.Mail"%>
<%@page import="java.util.Random"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.minds.Dbconnection"%>
<%@ page session="true"%>


<%
	/*    String id = null; */
	String docname = request.getParameter("docname");
	session.setAttribute("docname", docname);
	String password = request.getParameter("password");
	String docemail = request.getParameter("docemail");
	session.setAttribute("docemail", docemail);
	String gender = request.getParameter("gender");
	/* String dob = request.getParameter("dob"); */

	/*  String specialist = request.getParameter("specialist"); */
	String state = request.getParameter("state");
	String country = request.getParameter("country");
	/* String contactno = request.getParameter("contactno"); */
	String status = "NO";
	String skey = "";
	Random RANDOM = new SecureRandom();
	int PASSWORD_LENGTH = 10;
	String letters = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";

	for (int i = 0; i < PASSWORD_LENGTH; i++) {
		int index = (int) (RANDOM.nextDouble() * letters.length());
		skey += letters.substring(index, index + 1);
		System.out.println(skey);
	}
	try {

		Class.forName("com.mysql.jdbc.Driver");
		Connection co = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/achievesecure", "root",
				"admin");

		PreparedStatement ps = co
				.prepareStatement("insert into doctor(docname,docemail,password,gender,state,country,skey,status) values(?,?,?,?,?,?,?,?)");

		ps.setString(1, docname);
		ps.setString(2, docemail);
		ps.setString(3, password);
		ps.setString(4, gender);
		ps.setString(5, state);
		ps.setString(6, country);

		ps.setString(7, skey);
		ps.setString(8, status);

		int i = ps.executeUpdate();
		if (i > 0) {
			out.println("Registered Sucessfully");

			String msg = "Doctor Email : " + docemail
					+ "\nDID : \nPassword : " + password
					+ "\nMessage  :Login to your Account";
			Mail m = new Mail();
			m.secretMail(skey, docname, docemail);

			response.sendRedirect("DoctorLogin.jsp?msg=success");
			out.println("User Registered Successfully");
		} else {
			response.sendRedirect("adddoctor.jsp?msg1=failed");
		}
	} catch (Exception e1) {
		System.out.println(e1);
		out.println(e1.getMessage());
	}
%>
