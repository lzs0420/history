package com.use;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.bean.course;
import com.bean.college;
import com.bean.user;
import com.use.connect;

public class collegeService {
	
	public collegeService() {
		super();
		
	}

	public college getOne(String Id)
	{
		  
		Connection con=connect.getConnection();
		college m=null;

		try {
			con.setAutoCommit(false);
		
			
			
		
		PreparedStatement ps=con.prepareStatement("select * from College where collegeID=?");
		ps.setString(1, Id);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			
			String majorName=rs.getString("collegeName");
			String collegeID=rs.getString("collegeID");
		    m=new college(collegeID,majorName);
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
	
		    return m;  
		}
	
	    public List getAll(college m){
	    	List l= new ArrayList();
	    	Connection con=connect.getConnection();
	    	try {
				con.setAutoCommit(false);
			
				
				String sql="select * from College where 1=1";
		    //if(cou.getState()!=-1)
		       //{sql+=" and state = ?";}
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
				String majorName=rs.getString("collegeName");
				String collegeID=rs.getString("collegeID");
			    m=new college(collegeID,majorName);
			     l.add(m);
			    
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
			
				
				String sql="select * from College";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
				String majorName=rs.getString("collegeName");
				String collegeID=rs.getString("collegeID");
			    college m=new college(collegeID,majorName);
			     l.add(m);
			    
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

}
