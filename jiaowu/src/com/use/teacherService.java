package com.use;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.bean.teacher;
import com.bean.user;
import com.use.connect;

public class teacherService {
	
	public teacherService() {
		super();
		
	}

	public List getAll(teacher tea)
	{
		   List l=new ArrayList();
			Connection con=connect.getConnection();
		
	
			try {
				con.setAutoCommit(false);
			
				
				
			String sql="select * from Teacher where 1=1";
			if(tea.getTeacherID()!=null &&!tea.getTeacherID().equals(""))
			{
				sql=sql+" and teacherID like ?";
			}
			if(tea.getCollegeID()!=null &&!tea.getCollegeID().equals(""))
			{
				sql=sql+" and collegeID like ?";
			}
			if(tea.getName()!=null &&!tea.getName().equals(""))
			{
				sql=sql+" and name like ?";
			}
			if(tea.getSex()!=null &&!tea.getSex().equals(""))
			{
				sql=sql+" and sex like ?";
			}
			if(tea.getBirthday()!=null &&!tea.getBirthday().equals(""))
			{
				sql=sql+" and birthday like ?";
			}
			if(tea.getState()!=0)
			{
				sql=sql+" and state = ?";
			}
			
			PreparedStatement ps=con.prepareStatement(sql);
			
			int i=0;
			if(tea.getTeacherID()!=null &&!tea.getTeacherID().equals(""))
			{
				i++;
				ps.setString(i, "%"+tea.getTeacherID()+"%");
			}
			if(tea.getCollegeID()!=null &&!tea.getCollegeID().equals(""))
			{
				i++;
				ps.setString(i, "%"+tea.getCollegeID()+"%");
			}
			if(tea.getName()!=null &&!tea.getName().equals(""))
			{
				i++;
				ps.setString(i, "%"+tea.getName()+"%");
			}
			if(tea.getBirthday()!=null &&!tea.getBirthday().equals(""))
			{
				i++;
				ps.setString(i, "%"+tea.getBirthday()+"%");
			}
			if(tea.getSex()!=null &&!tea.getSex().equals(""))
			{
				i++;
				ps.setString(i, "%"+tea.getSex()+"%");
			}
			if(tea.getState()!=0)
			{
				i++;
				ps.setInt(i, tea.getState());
			}
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
				String teacherID=rs.getString("teacherID");
				String collegeID=rs.getString("collegeID");
				String name=rs.getString("name");
				String birthday=rs.getString("birthday");
				String sex=rs.getString("sex");
				String password=rs.getString("password");
				int state=rs.getInt("state");
				teacher tea1=new teacher(teacherID,collegeID,name,sex,birthday,password,state);
			     l.add(tea1);
			    
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
	
	public boolean add(teacher tea)
	{
		Connection con=connect.getConnection();
		boolean tag=false;
		try {
			con.setAutoCommit(false);
			
			PreparedStatement ps=con.prepareStatement("insert into Teacher (teacherID,collegeID,name,sex,birthday,password,state)values(?,?,?,?,?,?,?)");
			ps.setString(1, tea.getTeacherID());
			ps.setString(2, tea.getCollegeID());
			ps.setString(3, tea.getName());
			ps.setString(4, tea.getSex());
			ps.setString(5, tea.getBirthday());
			ps.setString(6, tea.getPassword());
			ps.setInt(7, tea.getState());
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
	
	public teacher getOne(String Id)
	{
		  
					Connection con=connect.getConnection();
					teacher tea1=null;
			
					try {
						con.setAutoCommit(false);
					
						
						
					
					PreparedStatement ps=con.prepareStatement("select * from Teacher where teacherID=?");
					ps.setString(1, Id);
					ResultSet rs=ps.executeQuery();
					
					while(rs.next())
					{
						
						String teacherID=rs.getString("teacherID");
						String collegeID=rs.getString("collegeID");
						String name=rs.getString("name");
						String birthday=rs.getString("birthday");
						String sex=rs.getString("sex");
						String password=rs.getString("password");
						int state=rs.getInt("state");
						tea1=new teacher(teacherID,collegeID,name,sex,birthday,password,state);
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
					
					return tea1;  
					 
		
	}
	
	public boolean update(teacher tea)
	{
		
		Connection con=connect.getConnection();
		boolean tag=false;
		try {
			con.setAutoCommit(false);
			
			PreparedStatement ps=con.prepareStatement("update Teacher set collegeID=?,name=?,sex=?,birthday=?,password=?,state=? where teacherID=?");
			ps.setString(7, tea.getTeacherID());
			ps.setString(1, tea.getCollegeID());
			ps.setString(2, tea.getName());
			ps.setString(3, tea.getSex());
			ps.setString(4, tea.getBirthday());
			ps.setString(5, tea.getPassword());
			ps.setInt(6, tea.getState());
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
	
	public boolean delete(String[] teacherID)
	{
		
		Connection con=connect.getConnection();
		boolean tag=false;
		try {
			con.setAutoCommit(false);
			for(int i=0;i<teacherID.length;i++)
			{
			PreparedStatement ps=con.prepareStatement("delete from Teacher where teacherID=?");
			
			ps.setString(1, teacherID[i]);
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
