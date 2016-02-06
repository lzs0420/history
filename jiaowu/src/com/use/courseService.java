package com.use;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.bean.course;
import com.bean.student;
import com.bean.user;
import com.use.connect;

public class courseService {

	public courseService() {
		super();
		
	}
	
	public course getOne(String Id)
	{
		  
		Connection con=connect.getConnection();
		course cou=null;

		try {
			con.setAutoCommit(false);
		
			
			
		
		PreparedStatement ps=con.prepareStatement("select * from Course where courseID=?");
		ps.setString(1, Id);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			
			String courseID=rs.getString("courseID");
			String courseName=rs.getString("courseName");
			int credit=rs.getInt("credit");
			int peopleNum=rs.getInt("peopleNum");
			int period=rs.getInt("period");
			int state=rs.getInt("state");
		    cou=new course(courseID,courseName,credit,peopleNum,period,state);
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
	
		    return cou;  
		}
	
	    public List getAll(course cou){
	    	List l= new ArrayList();
	    	Connection con=connect.getConnection();
	    	try {
				con.setAutoCommit(false);
			
				
				String sql="select * from Course where 1=1";
				if(cou.getCourseID()!=null &&!cou.getCourseID().equals(""))
				{
					sql=sql+" and courseID like ?";
				}
				if(cou.getCourseName()!=null &&!cou.getCourseName().equals(""))
				{
					sql=sql+" and courseName like ?";
				}
				if(cou.getCredit()!=0 )
				{
					sql=sql+" and credit = ?";
				}
				if(cou.getPeriod()!=0 )
				{
					sql=sql+" and period = ?";
				}
				if(cou.getPeopleNum()!=0 )
				{
					sql=sql+" and peopleNum = ?";
				}
				if(cou.getState()!=0 )
				{
					sql=sql+" and state = ?";
				}
				PreparedStatement ps=con.prepareStatement(sql);
				int i=0;
				if(cou.getCourseID()!=null &&!cou.getCourseID().equals(""))
				{
					i++;
					ps.setString(i, "%"+cou.getCourseID()+"%");
				}
				if(cou.getCourseName()!=null &&!cou.getCourseName().equals(""))
				{
					i++;
					ps.setString(i, "%"+cou.getCourseName()+"%");
				}
				if(cou.getCredit()!=0 )
				{
					i++;
					ps.setInt(i, cou.getCredit());
				}
				if(cou.getPeriod()!=0 )
				{
					i++;
					ps.setInt(i, cou.getPeriod());
				}
				if(cou.getPeopleNum()!=0 )
				{
					i++;
					ps.setInt(i, cou.getPeopleNum());
				}
				if(cou.getState()!=0 )
				{
					i++;
					ps.setInt(i, cou.getState());
				}
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
				String courseID=rs.getString("courseID");
				String courseName=rs.getString("courseName");
				int credit=rs.getInt("credit");
				int peopleNum=rs.getInt("peopleNum");
				int period=rs.getInt("period");
				int state=rs.getInt("state");
			    cou=new course(courseID,courseName,credit,peopleNum,period,state);
			     l.add(cou);
			    
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
	    
	    public List getAll(){
	    	List l= new ArrayList();
	    	Connection con=connect.getConnection();
	    	try {
				con.setAutoCommit(false);
			
				
				String sql="select * from Course where 1=1";
		    //if(cou.getState()!=-1)
		       //{sql+=" and state = ?";}
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
				String courseID=rs.getString("courseID");
				String courseName=rs.getString("courseName");
				int credit=rs.getInt("credit");
				int peopleNum=rs.getInt("peopleNum");
				int period=rs.getInt("period");
				int state=rs.getInt("state");
			    course cou=new course(courseID,courseName,credit,peopleNum,period,state);
			     l.add(cou);
			    
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
	    
	    public boolean add(course cou)
		{
			Connection con=connect.getConnection();
			boolean tag=false;
			try {
				con.setAutoCommit(false);
				
				PreparedStatement ps=con.prepareStatement("insert into Course(courseID,courseName,credit,period,peopleNum,state)values(?,?,?,?,?,?)");
				ps.setString(1, cou.getCourseID());
				ps.setString(2, cou.getCourseName());
				ps.setInt(3, cou.getCredit());
				ps.setInt(4, cou.getPeriod());
				ps.setInt(5, cou.getPeopleNum());
				ps.setInt(6, cou.getState());
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
	    
	    public boolean update(course cou)
		{
			
			Connection con=connect.getConnection();
			boolean tag=false;
			try {
				con.setAutoCommit(false);
				
				PreparedStatement ps=con.prepareStatement("update Course set courseName = ?,credit = ?,period = ?,peopleNum = ?,state = ? where courseID = ?");
				ps.setString(6, cou.getCourseID());
				ps.setString(1, cou.getCourseName());
				ps.setInt(2, cou.getCredit());
				ps.setInt(3, cou.getPeriod());
				ps.setInt(4, cou.getPeopleNum());
				ps.setInt(5, cou.getState());
				
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
		
		public boolean delete(String[] courseID)
		{
			
			Connection con=connect.getConnection();
			boolean tag=false;
			try {
				con.setAutoCommit(false);
				for(int i=0;i<courseID.length;i++)
				{
				PreparedStatement ps=con.prepareStatement("delete from Course where courseID=?");
				
				ps.setString(1, courseID[i]);
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

}


