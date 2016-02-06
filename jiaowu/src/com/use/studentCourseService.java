package com.use;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.HttpSession;

import com.bean.course;
import com.bean.student;
import com.bean.user;
import com.use.connect;
import com.bean.studentCourse;

public class studentCourseService {

	public studentCourseService() {
		super();
		
	}
	
	public List getAll(studentCourse sc){
		List l=new ArrayList();
		Connection con=connect.getConnection();
    	try {
			con.setAutoCommit(false);
		
			
			String sql="select * from StudentCourse where 1=1";
			if(sc.getCourseID()!=null &&!sc.getCourseID().equals(""))
			{
				sql=sql+" and courseID like ?";
			}
			if(sc.getStudentID()!=null &&!sc.getStudentID().equals(""))
			{
				sql=sql+" and studentID like ?";
			}
			if(sc.getSemester()!=null &&!sc.getSemester().equals(""))
			{
				sql=sql+" and semester like ?";
			}
			if(sc.getScore()!=0 )
			{
				sql=sql+" and score = ?";
			}
			if(sc.getState()!=0 )
			{
				sql=sql+" and state = ?";
			}
			PreparedStatement ps=con.prepareStatement(sql);
			int i=0;
			if(sc.getCourseID()!=null &&!sc.getCourseID().equals(""))
			{
				i++;
				ps.setString(i, "%"+sc.getCourseID()+"%");
			}
			if(sc.getStudentID()!=null &&!sc.getStudentID().equals(""))
			{
				i++;
				ps.setString(i, "%"+sc.getStudentID()+"%");
			}
			if(sc.getSemester()!=null &&!sc.getSemester().equals(""))
			{
				i++;
				ps.setString(i, "%"+sc.getSemester()+"%");
			}
			if(sc.getScore()!=0 )
			{
				i++;
				ps.setInt(i, sc.getScore());
			}
			if(sc.getState()!=0 )
			{
				i++;
				ps.setInt(i, sc.getState());
			}
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			

			String studentID=rs.getString("studentID");
			String courseID=rs.getString("courseID");
			int score=rs.getInt("score");
			String semester=rs.getString("semester");
			int state=rs.getInt("state");
		    sc=new studentCourse(studentID,courseID,semester,score,state);
		    l.add(sc);
		    
		}
		con.commit();
	     connect.closeStatement(ps);
		 connect.closeResultSet(rs);
		 connect.closeConnection(con);
		
		} catch (SQLException e1) {
			
			try {
				con.rollback();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			e1.printStackTrace();
		}
    	return l;
    }
	
	public studentCourse getOne(String id){
		//System.out.println(id);
		String[] ids=id.split("y");
		//System.out.println(ids[0]);
		//System.out.println(ids[1]);
		studentCourse sc=null;
		Connection con=connect.getConnection();
		try {
			con.setAutoCommit(false);
		
			
			
		
		PreparedStatement ps=con.prepareStatement("select * from StudentCourse where studentID = ? and courseID = ?");
		ps.setString(1, ids[0]);
		ps.setString(2, ids[1]);
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			String studentID=rs.getString("studentID");
			String courseID=rs.getString("courseID");
			int score=rs.getInt("score");
			String semester=rs.getString("semester");
			int state=rs.getInt("state");
		    sc=new studentCourse(studentID,courseID,semester,score,state);
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
		return sc;
	}
	
	public List getStu(String id){
		studentCourse sc=null;
		List l=new ArrayList();
		Connection con=connect.getConnection();
		try {
			con.setAutoCommit(false);
		
			
			
		
		PreparedStatement ps=con.prepareStatement("select * from StudentCourse where studentID=?");
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			String studentID=rs.getString("studentID");
			String courseID=rs.getString("courseID");
			int score=rs.getInt("score");
			String semester=rs.getString("semester");
			int state=rs.getInt("state");
		    sc=new studentCourse(studentID,courseID,semester,score,state);
		    l.add(sc);
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
		studentCourse sc=null;
		Connection con=connect.getConnection();
		List l=new ArrayList();
		try {
			con.setAutoCommit(false);
		
			
			
		
		PreparedStatement ps=con.prepareStatement("select * from StudentCourse where courseID=?");
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			String studentID=rs.getString("studentID");
			String courseID=rs.getString("courseID");
			int score=rs.getInt("score");
			String semester=rs.getString("semester");
			int state=rs.getInt("state");
		    sc=new studentCourse(studentID,courseID,semester,score,state);
		    l.add(sc);
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
	
	public boolean add(studentCourse sc)
	{
		Connection con=connect.getConnection();
		boolean tag=false;
		try {
			con.setAutoCommit(false);
			
			PreparedStatement ps=con.prepareStatement("insert into StudentCourse(studentID,courseID,score,semester,state)values(?,?,?,?,?)");
			ps.setString(1, sc.getStudentID());
			ps.setString(2, sc.getCourseID());
			ps.setInt(3, sc.getScore());
			ps.setString(4, sc.getSemester());
			ps.setInt(5, sc.getState());
			ps.executeUpdate();
			con.commit();
			tag=true;
		} catch (SQLException e1) {
			
			try {
				con.rollback();
			} catch (SQLException e2) {
				
				e2.printStackTrace();
			}
			e1.printStackTrace();
		}
		
		return tag;
		
	}
    
    public boolean update(studentCourse sc)
	{
		
		Connection con=connect.getConnection();
		boolean tag=false;
		try {
			con.setAutoCommit(false);
			
			PreparedStatement ps=con.prepareStatement("update StudentCourse set score = ?,semester = ?,state = ? where courseID = ? and studentID = ?");
			ps.setString(4, sc.getCourseID());
			ps.setInt(1, sc.getScore());
			ps.setString(2, sc.getSemester());
			ps.setInt(3, sc.getState());
			ps.setString(5, sc.getStudentID());
			
			ps.executeUpdate();
			con.commit();
			tag=true;
		} catch (SQLException e1) {
			
			try {
				con.rollback();
			} catch (SQLException e2) {
				
				e2.printStackTrace();
			}
			e1.printStackTrace();
		}
		
		return tag;
		
	}
	
	public boolean delete(String[] scID)
	{
		
		Connection con=connect.getConnection();
		boolean tag=false;
		try {
			con.setAutoCommit(false);
			for(int i=0;i<scID.length;i++)
			{
				String[] ss=scID[i].split("y");
			PreparedStatement ps=con.prepareStatement("delete from StudentCourse where studentID = ? and courseID = ?");
			ps.setString(1, ss[0]);
			ps.setString(2, ss[1]);
			ps.executeUpdate();
			}
			con.commit();
			tag=true;
		} catch (SQLException e1) {
			
			try {
				con.rollback();
			} catch (SQLException e2) {
				
				e2.printStackTrace();
			}
			e1.printStackTrace();
		}
		
		return tag;
	}
	
	public boolean courseSelect(String[] values,user user1){
		boolean tag=false;
		Connection con=connect.getConnection();
		
		try {
			con.setAutoCommit(false);
		
			
			
		for(int i=0;i<values.length;i++){
		PreparedStatement ps=con.prepareStatement("insert into StudentCourse (studentID,courseID,score,semester,state) values (?,?,?,?,?)");
		ps.setString(1, user1.getUserID());
		ps.setString(2, values[i]);
		ps.setInt(3, 0);
		ps.setString(4, "1");
		ps.setInt(5, 1);
		ps.executeUpdate();
		 con.commit();
		}
		tag=true;
		}catch (SQLException e1) {
			
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
