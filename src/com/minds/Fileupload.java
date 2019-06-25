package com.minds;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)
// upload file's size up to 16MB
public class Fileupload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	File file;
	final String filepath = "D:\\";

	public Fileupload() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// gets values of text fields

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			HttpSession session = request.getSession();

			MultipartRequest m = new MultipartRequest(request, filepath);
			File file = m.getFile("file");
			System.out.println("file");

			String id = m.getParameter("id");
			System.out.println(id);

			int pid = Integer.valueOf(id);
			System.out.println(id);

			String pname = m.getParameter("pname");
			String email = m.getParameter("email");

			String attributekey = m.getParameter("attributekey");

			/* String content= m.getParameter("content"); */
			String filename = file.getName().toLowerCase();
			System.out.println("File name" + filename);
			Connection con = Dbconnection.getConnection();
			Statement st3 = con.createStatement();
			ResultSet rt3 = st3
					.executeQuery("select * from upload where filename='"
							+ filename + "'");
			if (rt3.next()) {
				response.sendRedirect("reportupload.jsp?failed='yes'");
			} else {
				// out.println("file location:"+filepath+"\n file name:"+filename+"\n");

				BufferedReader br = new BufferedReader(new FileReader(filepath
						+ filename));
				StringBuffer sb = new StringBuffer();
				String temp = null;

				while ((temp = br.readLine()) != null) {
					sb.append(temp);
				}
				// Secret Key
				CpABE e = new CpABE();
				String IBE = e.encrypt(sb.toString());

				// storing encrypted file
				FileWriter fw = new FileWriter(file);
				fw.write(IBE);
				fw.close();
				System.out.println("string Buffer" + IBE);

				// Secret Key
				Random RANDOM = new SecureRandom();
				int PASSWORD_LENGTH = 10;
				String letters = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";
				String skey = "";

				for (int i = 0; i < PASSWORD_LENGTH; i++) {
					int index = (int) (RANDOM.nextDouble() * letters.length());
					skey += letters.substring(index, index + 1);
					System.out.println("Secret Key:" + skey);
				}

				CpABE e1 = new CpABE();
				String epname = e1.encrypt(pname);
				System.out.println("string Buffer" + epname);

				CpABE e2 = new CpABE();
				String eemail = e2.encrypt(email);
				System.out.println("string Buffer" + eemail);

				CpABE e3 = new CpABE();
				String eattributekey = e3.encrypt(attributekey);
				System.out.println("string Buffer" + eattributekey);
				/*
				 * KeyGenerator keyGen = KeyGenerator.getInstance("AES");
				 * keyGen.init(128); SecretKey secretKey = keyGen.generateKey();
				 * String epname = new CpABE().encrypt(pname, secretKey); String
				 * eemail = new CpABE().encrypt(email, secretKey); String
				 * eattributekey = new CpABE().encrypt(attributekey, secretKey);
				 */
				/*
				 * String contactno1 = new encryption().encrypt(contactno,
				 * secretKey);
				 */

				// Trapdoor Key Code..........................................
				KeyGenerator Attrib_key = KeyGenerator.getInstance("AES");
				Attrib_key.init(128);
				SecretKey Trapdoorkey = Attrib_key.generateKey();
				System.out.println("++++++++ key:" + Trapdoorkey);

				byte[] b = Trapdoorkey.getEncoded();
				String trapkey = Base64.encode(b);
				System.out.println("converted secretkey to string:" + trapkey);
				// Trapdoor Key Code..........................................

				// Secret Key
				// date and Time
				DateFormat dateFormat = new SimpleDateFormat(
						"yyyy.MM.dd G 'at' HH:mm:ss ");
				Date date = new Date();
				String time = dateFormat.format(date);
				System.out.println("current Date " + time);

				String len = file.length() + "bytes";

				// uploading file
				
				boolean status = new Ftpcon().upload(file);

				if (status) {
					Connection con1 = Dbconnection.getConnection();
					Statement st = con1.createStatement();

					int i = st
							.executeUpdate("insert into upload(pid,pname,email,attributekey,filename,content,time,secret_key,trapdoorkey,status,epname,eemail,eattributekey)values(" + pid + ",'" + pname + "','" + email+ "','"+ attributekey+ "','"+ file.getName() + "','" + IBE + "','" + time + "','" + skey + "','" + trapkey + "','No','" + epname + "','" + eemail + "','"+ eattributekey+ "')");
					System.out.println(i);
					if (i != 0) {
						// out.println("success");
						response.sendRedirect("pviewreport.jsp?status='uploded'");

					} else {
						out.println("error while uploading additional informations");
					}
					out.println("file stored");
					out.println(file.length());
				} else {
					out.println("error");
				}
			}
		} catch (Exception e) {
			out.println(e);
		} finally {
			out.close();
		}
	}

	// <editor-fold defaultstate="collapsed"
	// desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>
}
