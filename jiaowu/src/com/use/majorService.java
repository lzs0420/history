package com.use;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.bean.course;
import com.bean.major;
import com.bean.user;
import com.use.connect;

public class majorService {
	
	public majorService() {
		super();
		
	}

	public major getOne(String Id)
	{
		  
		Connection con=connect.getConnection();
		major m=null;

		try {
			con.setAutoCommit(false);
		
			
			
		
		PreparedStatement ps=con.prepareStatement("select * from Major where majorID=?");
		ps.setString(1, Id);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			
			String majorID=rs.getString("majorID");
			String majorName=rs.getString("majorName");
			String collegeID=rs.getString("collegeID");
		    m=new major(majorID,collegeID,majorName);
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
	
	    public List getAll(major m){
	    	List l= new ArrayList();
	    	Connection con=connect.getConnection();
	    	try {
				con.setAutoCommit(false);
			
				
				String sql="select * from Major where 1=1";
				if(m.getMajorID()!=null &&!m.getMajorID().equals(""))
				{
					sql=sql+" and majorID like ?";
				}
				if(m.getMajorName()!=null &&!m.getMajorName().equals(""))
				{
					sql=sql+" and majorName like ?";
				}
				if(m.getCollegeID()!=null &&!m.getCollegeID().equals(""))
				{
					sql=sql+" and collegeID like ?";
				}
			PreparedStatement ps=con.prepareStatement(sql);
			int i=0;
			if(m.getMajorID()!=null &&!m.getMajorID().equals(""))
			{
				i++;
				ps.setString(i, "%"+m.getMajorID()+"%");
			}
			if(m.getMajorName()!=null &&!m.getMajorName().equals(""))
			{
				i++;
				ps.setString(i, "%"+m.getMajorName()+"%");
			}
			if(m.getCollegeID()!=null &&!m.getCollegeID().equals(""))
			{
				i++;
				ps.setString(i, "%"+m.getCollegeID()+"%");
			}
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
				String majorID=rs.getString("majorID");
				String majorName=rs.getString("majorName");
				String collegeID=rs.getString("collegeID");
			    m=new major(majorID,collegeID,majorName);
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
			
				
				String sql="select * from Major where 1=1";
		    //if(cou.getState()!=-1)
		       //{sql+=" and state = ?";}
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
				String majorID=rs.getString("majorID");
				String majorName=rs.getString("majorName");
				String collegeID=rs.getString("collegeID");
			     major m=new major(majorID,collegeID,majorName);
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
	    
	    public boolean add(major cou)
		{
			Connection con=connect.getConnection();
			boolean tag=false;
			try {
				con.setAutoCommit(false);
				
				PreparedStatement ps=con.prepareStatement("insert into Major(majorID,collegeID,majorName)values(?,?,?)");
				ps.setString(1, cou.getMajorID());
				ps.setString(2, cou.getCollegeID());
				ps.setString(3, cou.getMajorName());
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
	    
	    public boolean update(major cou)
		{
			
			Connection con=connect.getConnection();
			boolean tag=false;
			try {
				con.setAutoCommit(false);
				
				PreparedStatement ps=con.prepareStatement("update Major set collegeID = ?,majorName = ? where majorID = ?");
				ps.setString(3, cou.getMajorID());
				ps.setString(2, cou.getMajorName());
				ps.setString(1, cou.getCollegeID());
				
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
		
		public boolean delete(String[] majorID)
		{
			
			Connection con=connect.getConnection();
			boolean tag=false;
			try {
				con.setAutoCommit(false);
				for(int i=0;i<majorID.length;i++)
				{
				PreparedStatement ps=con.prepareStatement("delete from Major where majorID=?");
				
				ps.setString(1, majorID[i]);
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
