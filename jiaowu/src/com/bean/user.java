package com.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.use.connect;

public class user {
	private String userID;
	private String userPWD;
	private String job;
	
	public user(String userID, String userPWD, String job) {
		super();
		this.userID = userID;
		this.userPWD = userPWD;
		this.job = job;
	}
	
	public user() {
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
	
	public boolean isExit(user u)
	{
		
		boolean tag=false;
		Connection con=connect.getConnection();
		
		try {
			con.setAutoCommit(false);
			String job1=u.getJob();
			PreparedStatement ps;
			if(job1.equals("Student"))
			{
				ps=con.prepareStatement("select * from "+job1+" where studentID= ? and password=?");
				ps.setString(1, u.getUserID());
				ps.setString(2, u.getUserPWD());
				System.out.println(job1+u.getUserID()+u.getUserPWD());
			}
			else if(job1.equals("Teacher"))
			{
				ps=con.prepareStatement("select * from "+job1+" where teacherID = ? and password=?");
				ps.setString(1, u.getUserID());
				ps.setString(2, u.getUserPWD());
			}
			else{
				ps=con.prepareStatement("select * from "+job1+" where administratorID = ? and password=?");
				ps.setString(1, u.getUserID());
				ps.setString(2, u.getUserPWD());
			}
			//PreparedStatement ps=con.prepareStatement("select * from Student where studentID=20110101 and password=000123");
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				tag=true;
			}
			else
			{
				tag=false;
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

}
