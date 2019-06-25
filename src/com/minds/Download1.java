package com.minds;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.minds.Dbconnection;

/**
 * Servlet implementation class Download
 */
@WebServlet("/Download1")


public class Download1 extends HttpServlet {


    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
             String id=request.getParameter("id");
             int id1=Integer.parseInt(id);
             String filename=null;
             InputStream is=null;
          
          Connection con= Dbconnection.getConnection();
          Statement st=con.createStatement();
          Statement st1=con.createStatement();
          
          HttpSession user=request.getSession();
          
  HttpSession session = request.getSession(true);
       String  pname=(String)session.getAttribute("pname");
   
          
          
          
          ResultSet rt=st.executeQuery("select * from upload where id='"+id1+"'");
          
          if(rt.next()){
           filename=rt.getString("filename");
          
           is=(InputStream)rt.getAsciiStream("content");             
          }
          else{              
           out.println("error while retreiving data");
          
         }
          
         BufferedReader br=new BufferedReader(new InputStreamReader(is));
         String temp=null;
         StringBuffer sb=new StringBuffer();
         while((temp=br.readLine())!=null){
            sb.append(temp);
         }
         String content=new CpABE().decrypt(sb.toString());
         String dpath = "G://";
         System.out.println("Filename :"+filename);
     
         
         response.setHeader("Content-Disposition","attachment;filename=\""+filename+"\"");        
         out.write(content);
         
        
         
            Calendar cal=Calendar.getInstance();
            DateFormat dateformat=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");          
            String time=dateformat.format(cal.getTime());
            System.out.println("download time:"+time);
            
            st1.executeUpdate("insert into download(filename,pname,time)values('"+filename+"','"+pname+"','"+time+"')");

                 
        }
        catch(Exception e){
//            out.println(e);
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
