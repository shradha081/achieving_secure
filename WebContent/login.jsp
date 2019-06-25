<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.minds.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>

<%

    Connection con = null;
    Statement st = null;
   ResultSet rs = null;


    String secret_key = request.getParameter("secret_key");
   
    session.setAttribute("secret_key", secret_key);
 /*   session.setAttribute("tkey", trapdoorkey); */
/*  System.out.println("User Details"+dob+gen+role+State+Eamil+name+pass+Country); */

 String status = request.getParameter("status"); 
 try {
     con = Dbconnection.getConnection();
     st = con.createStatement();
     
     rs = st.executeQuery("select * from upload where secret_key='" + secret_key + "'");
                   if (rs.next()) {
                        response.sendRedirect("down1.jsp?msg=success");
                    } else {
                        response.sendRedirect("accessreq.jsp?msgg=failed");
                    }
             } catch (Exception ex) {
                 ex.printStackTrace();
             }
    
 
 
%>
