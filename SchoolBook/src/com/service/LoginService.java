/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.connect.connect;

/**
 * 
 * @author Administrator
 */
public class LoginService {
	private String userID;
	private String userPWD;
	private String job;
	private int value;

	public LoginService(String userID, String userPWD, String job, int value) {
		this.userID = userID;
		this.userPWD = userPWD;
		this.job = job;
		this.value = value;
	}

	public LoginService(String userID, String userPWD, String job) {
		super();
		this.userID = userID;
		this.userPWD = userPWD;
		this.job = job;
	}

	public LoginService() {
		super();
		
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPWD() {
		return userPWD;
	}

	public void setUserPWD(String userPWD) {
		this.userPWD = userPWD;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public boolean isExit(LoginService u) throws Exception {

		boolean tag = false;
		connect conn = new connect();
		String job2 = u.getJob();
		// System.out.println(job2);
		Connection con = conn.getConnection();

		try {
			con.setAutoCommit(false);
			String job1 = u.getJob();
			PreparedStatement ps;

			if (job1.equals("Admin")) {
				ps = con.prepareStatement("select * from admin where A_id= ? and A_pwd=?");
				ps.setString(1, u.getUserID());
				ps.setString(2, u.getUserPWD());
				// System.out.println(job1+u.getUserID()+u.getUserPWD());
			} else {
				ps = con.prepareStatement("select * from user where U_id = ? and U_pwd=?");
				ps.setString(1, u.getUserID());
				ps.setString(2, u.getUserPWD());
			}
			// PreparedStatement
			// ps=con.prepareStatement("select * from Student where studentID=20110101 and password=000123");
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				tag = true;
			} else {
				tag = false;
			}
			con.commit();
		} catch (SQLException e) {
			
			try {
				con.rollback();
			} catch (SQLException e1) {
				
				e1.printStackTrace();
			}
			e.printStackTrace();
		}

		return tag;

	}

	public int value(LoginService u) throws Exception {

		int tag = -1;
		connect conn = new connect();
		Connection con = conn.getConnection();

		con.setAutoCommit(false);
		String job1 = u.getJob();
		PreparedStatement ps;

		if (job1.equals("Admin")) {
			try {
				ps = con.prepareStatement("select * from admin where A_id= ? and A_pwd=?");
				ps.setString(1, u.getUserID());
				ps.setString(2, u.getUserPWD());
				// System.out.println(job1+u.getUserID()+u.getUserPWD());
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					tag = rs.getInt("A_value") + 2;
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}

			con.commit();

		} else {
			try {
				ps = con.prepareStatement("select * from user where U_id = ? and U_pwd=?");
				ps.setString(1, u.getUserID());
				ps.setString(2, u.getUserPWD());
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					tag = rs.getInt("U_value");
				}
				con.commit();
			} catch (SQLException e) {
				

				e.printStackTrace();
			}

		}
		// PreparedStatement
		// ps=con.prepareStatement("select * from Student where studentID=20110101 and password=000123");

		return tag;

	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}
}
