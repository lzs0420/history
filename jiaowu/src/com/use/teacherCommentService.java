package com.use;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.bean.student;
import com.bean.user;
import com.use.connect;
import com.bean.teacherComment;


public class teacherCommentService {

	public teacherCommentService() {
		super();
		
	}
	
	public List getStu(String id){
		teacherComment tc=new teacherComment();
		Connection con=connect.getConnection();
		List l=new ArrayList();
		try {
			con.setAutoCommit(false);
		
			
			
		
		PreparedStatement ps=con.prepareStatement("select * from TeacherComment where studentID=?");
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			
			String studentID=rs.getString("studentID");
			String teacherID=rs.getString("teacherID");
			String courseID=rs.getString("courseID");
			int score=rs.getInt("score");
			String time=rs.getString("time");
			String comment=rs.getString("comment");
		    tc=new teacherComment(teacherID,studentID,courseID,time,comment,score);
		    l.add(tc);
		}
		 con.commit();
	     connect.closeStatement(ps);
		 connect.closeResultSet(rs);
		 connect.closeConnection(con);
		
		} catch (SQLException e1) {
			
			try {
				con.rollback();
			} catch (SQLException se) {
				
				se.printStackTrace();
			}
			e1.printStackTrace();
		}
		return l;
	}
	
	public List getTea(String id){
		teacherComment tc=new teacherComment();
		Connection con=connect.getConnection();
		List l=new ArrayList();
		try {
			con.setAutoCommit(false);
		
			
			
		
		PreparedStatement ps=con.prepareStatement("select * from TeacherComment where teacherID=?");
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			
			String studentID=rs.getString("studentID");
			String teacherID=rs.getString("teacherID");
			String courseID=rs.getString("courseID");
			int score=rs.getInt("score");
			String time=rs.getString("time");
			String comment=rs.getString("comment");
			tc=new teacherComment(teacherID,studentID,courseID,time,comment,score);
		    l.add(tc);
		}
		 con.commit();
	     connect.closeStatement(ps);
		 connect.closeResultSet(rs);
		 connect.closeConnection(con);
		
		} catch (SQLException e1) {
			
			try {
				con.rollback();
			} catch (SQLException se) {
				
				se.printStackTrace();
			}
			e1.printStackTrace();
		}
		return l;
	}
	
	public List getCou(String id){
		teacherComment tc=new teacherComment();
		Connection con=connect.getConnection();
		List l=new ArrayList();
		try {
			con.setAutoCommit(false);
		
			
			
		
		PreparedStatement ps=con.prepareStatement("select * from TeacherComment where studentID=?");
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			
			String studentID=rs.getString("studentID");
			String teacherID=rs.getString("teacherID");
			String courseID=rs.getString("courseID");
			int score=rs.getInt("score");
			String time=rs.getString("time");
			String comment=rs.getString("comment");
			tc=new teacherComment(teacherID,studentID,courseID,time,comment,score);
		    l.add(tc);
		}
		 con.commit();
	     connect.closeStatement(ps);
		 connect.closeResultSet(rs);
		 connect.closeConnection(con);
		
		} catch (SQLException e1) {
			
			try {
				con.rollback();
			} catch (SQLException se) {
				
				se.printStackTrace();
			}
			e1.printStackTrace();
		}
		return l;
	}
	
	public boolean TComment(teacherComment tc){
		boolean tag=false;
		Connection con=connect.getConnection();
		try {
			con.setAutoCommit(false);
		
			
		PreparedStatement ps=con.prepareStatement("update TeacherComment set time=?,score=?,comment=? where studentID = ? and teacherID = ? and courseID = ?");
		ps.setString(1, "2014");
		ps.setInt(2, tc.getScore());
		ps.setString(3, tc.getComment());
		ps.setString(4, tc.getStudentID());
		ps.setString(5, tc.getTeacherID());
		ps.setString(6, tc.getCourseID());
		ps.executeUpdate();
		con.commit();
	     connect.closeStatement(ps);
		 connect.closeConnection(con);
		tag=true;
		} catch (SQLException e1) {
			
			try {
				con.rollback();
			} catch (SQLException se) {
				
				se.printStackTrace();
			}
			e1.printStackTrace();
		}
		return tag;
	}

}
