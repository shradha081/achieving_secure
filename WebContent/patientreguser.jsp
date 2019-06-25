<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.minds.Dbconnection"%> 
<%@page import="com.minds.bean.Patient"%>   
<jsp:useBean id="u" class="com.minds.bean.Patient"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>  
 
<%
	int i = Dbconnection.Patientreg(u);
    if (i > 0) {
		response.sendRedirect("PatientLogin.jsp");
		System.out.println("Patient is added successfully!");

	} else {
		response.sendRedirect("Patientreg.jsp");

		out.close();
	}%>
  
</body>
</html>