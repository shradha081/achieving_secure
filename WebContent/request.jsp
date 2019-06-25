<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>

<%@ page import="com.minds.Dbconnection"%>
  
       <% 
        try
                {
				
//           int a1 =(Integer)(session.getAttribute( "id" ));
          
                
                  String pid = request.getParameter( "pid" );
                  String pname= request.getParameter("pname");
                  String time= request.getParameter("time"); 
                  String attributekey= request.getParameter("attributekey");
                  String filename=request.getParameter("filename");
              /* 
                int  did=(Integer)session.getAttribute("did");
                  String  docemail=(String)session.getAttribute("docemail");
                  String  docname=(String)session.getAttribute("docname"); */
                 String did = request.getParameter( "did" );
                  String docname= request.getParameter("docname");
                  String docemail= request.getParameter("docemail"); 
                  String  secret_key= request.getParameter("secret_key");
                  
                  String  content= request.getParameter("content");
                   String  status="No";  
       System.out.println("Request is activated"+pid+pname+time+attributekey+filename+docname+docemail+secret_key+status);
	  	  
	 
       Connection con= Dbconnection.getConnection();
        Statement st=con.createStatement();
		
        
            String sql="insert into request(pid,pname,time,attributekey,filename,docname,docemail,secret_key,status,content) values ("+pid+",'"+pname+"','"+time+"','"+attributekey+"','"+filename+"','"+docname+"','"+docemail+"','"+secret_key+"','"+status+"','"+content+"')";
		
        int x=st.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("DoctorHome.jsp?msg=Request_send_Successfully");
	
		}
				else{
		response.sendRedirect("DocRequest.jsp?msgg=faild");
		
		}
        con.close();
        st.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>   