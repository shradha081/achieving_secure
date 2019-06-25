/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.minds;

import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.minds.bean.Cloud;
import com.minds.bean.Doctor;

import com.minds.bean.Patient;
import com.minds.bean.Trusted;

/**
 *
 * @author java2
 */
public class Dbconnection {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/achievesecure", "root",
					"admin");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return con;
	}

	public static int save(Cloud u) {
		int status = 0;
		String duser = null, dpass = null;
		String user = u.getUsername();
		String Password = u.getPassword();

		try {
			Dbconnection db = new Dbconnection();
			Connection con = db.getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into cloud (username, password) value (?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());

			String sql = "select * from cloud where username='" + user
					+ "' and password='" + Password + "'";
			ResultSet rs = ps.executeQuery(sql);
			while (rs.next()) {
				duser = rs.getString("username");
				dpass = rs.getString("password");
			}
			if (duser.equalsIgnoreCase(duser)
					&& (dpass.equalsIgnoreCase(dpass))) {
				status = 1;
			} else {
				status = 0;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int save(Trusted u) {
		int status = 0;
		String duser = null, dpass = null;
		String user = u.getUsername();
		String Password = u.getPassword();

		try {
			Dbconnection db = new Dbconnection();
			Connection con = db.getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into trusted (username, password) value (?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());

			String sql = "select * from trusted where username='" + user
					+ "' and password='" + Password + "'";
			ResultSet rs = ps.executeQuery(sql);
			while (rs.next()) {
				duser = rs.getString("username");
				dpass = rs.getString("password");
			}
			if (duser.equalsIgnoreCase(duser)
					&& (dpass.equalsIgnoreCase(dpass))) {
				status = 1;
			} else {
				status = 0;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int PatientLogin(Patient u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into patient(email, password) values(?,?)");

			ps.setString(1, u.getEmail());
			ps.setString(2, u.getPassword());

			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int Patientreg(Patient u) {
		int status = 0;
		try {
			Random RANDOM = new SecureRandom();
			int PASSWORD_LENGTH = 10;
			String letters = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";
			String skey = "";

			for (int i = 0; i < PASSWORD_LENGTH; i++) {
				int index = (int) (RANDOM.nextDouble() * letters.length());
				skey += letters.substring(index, index + 1);
			}

			Dbconnection db = new Dbconnection();
			Connection con = db.getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into patient(pname,password,email,gender,state,country) value(?,?,?,?,?,?)");

			ps.setString(1, u.getPname());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getGender());
			ps.setString(5, u.getState());

			ps.setString(6, u.getCountry());

			int i = ps.executeUpdate();
			if (i != 0) {
				status = 1;
			} else {
				status = 0;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static int update(Patient u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("update patient set pname=?,password=?,email=?,gender=?,state=?,country=? where id=?");

			ps.setString(1, u.getPname());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getGender());
			ps.setString(5, u.getState());
			ps.setString(6, u.getCountry());

			ps.setInt(8, u.getId());
			status = ps.executeUpdate();
			System.out.println("status" + status);
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(Patient u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("delete from patient where id=?");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Patient> getAllRecords() {
		List<Patient> list = new ArrayList<Patient>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from patient");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Patient u = new Patient();
				u.setId(rs.getInt("id"));
				u.setPname(rs.getString("pname"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setGender(rs.getString("gender"));
				u.setState(rs.getString("state"));
				u.setCountry(rs.getString("country"));

				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Patient getRecordById(int id) {
		Patient u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from patient where email=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Patient();
				u.setEmail(rs.getString("email"));
				u.setPassword(rs.getString("password"));

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}

	public static int DoctorLogin(Doctor u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into doctor(docemail, password) values(?,?)");

			ps.setString(1, u.getDocemail());
			ps.setString(2, u.getPassword());

			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int Doctorreg(Doctor u) {
		int status = 0;
		try {

			Dbconnection db = new Dbconnection();
			Connection con = db.getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into doctor(docname,password,docemail,gender,state,country) values(?,?,?,?,?,?)");

			ps.setString(1, u.getDocname());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getDocemail());
			ps.setString(4, u.getGender());

			ps.setString(5, u.getState());
			ps.setString(6, u.getCountry());

			ps.setInt(1, u.getId());
			int i1 = ps.executeUpdate();

			if (status != 0) {
				status = 1;
			} else {
				status = 0;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static int update(Doctor u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("update doctor set docname=?,password=?,docemail=?,gender=?,state=?,country=? where id=?");

			ps.setString(1, u.getDocname());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getDocemail());
			ps.setString(4, u.getGender());
			ps.setString(5, u.getState());
			ps.setString(6, u.getCountry());

			ps.setInt(8, u.getId());
			status = ps.executeUpdate();
			System.out.println("status" + status);
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static List<Doctor> getAllRecords1() {
		List<Doctor> list = new ArrayList<Doctor>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from doctor");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Doctor u = new Doctor();
				u.setId(rs.getInt("id"));

				u.setDocname(rs.getString("docname"));
				u.setPassword(rs.getString("password"));
				u.setDocemail(rs.getString("docemail"));
				u.setGender(rs.getString("gender"));
				u.setState(rs.getString("state"));
				u.setCountry(rs.getString("country"));

				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Doctor getRecordById1(int id) {
		Doctor u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from doctor where email=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Doctor();
				u.setDocemail(rs.getString("docemail"));
				u.setPassword(rs.getString("password"));

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
}
