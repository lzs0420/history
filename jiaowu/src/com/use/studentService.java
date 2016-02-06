package com.use;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.bean.student;
import com.bean.user;
import com.use.connect;

public class studentService {
	
	public studentService() {
		super();
		
	}

	public List getAll(student stu)
	{
		   List l=new ArrayList();
			Connection con=connect.getConnection();
		
	
			try {
				con.setAutoCommit(false);
			
				
				
			String sql="select * from Student where 1=1";
			if(stu.getStudentID()!=null &&!stu.getStudentID().equals(""))
			{
				sql=sql+" and studentID like ?";
			}
			if(stu.getMajorID()!=null &&!stu.getMajorID().equals(""))
			{
				sql=sql+" and majorID like ?";
			}
			if(stu.getName()!=null &&!stu.getName().equals(""))
			{
				sql=sql+" and name like ?";
			}
			if(stu.getGrade()!=0 )
			{
				sql=sql+" and grade = ?";
			}
			if(stu.getBirthday()!=null &&!stu.getBirthday().equals(""))
			{
				sql=sql+" and birthday like ?";
			}
			if(stu.getSex()!=null &&!stu.getSex().equals(""))
			{
				sql=sql+" and sex like ?";
			}
			if(stu.getYear()!=0 )
			{
				sql=sql+" and year = ?";
			}
			if(stu.getState()!=0)
			{
				sql=sql+" and state = ?";
			}
			
			PreparedStatement ps=con.prepareStatement(sql);
			
			int i=0;
			if(stu.getStudentID()!=null &&!stu.getStudentID().equals(""))
			{
				i++;
				ps.setString(i, "%"+stu.getStudentID()+"%");
			}
			if(stu.getMajorID()!=null &&!stu.getMajorID().equals(""))
			{
				i++;
				ps.setString(i, "%"+stu.getMajorID()+"%");
			}
			if(stu.getName()!=null &&!stu.getName().equals(""))
			{
				i++;
				ps.setString(i, "%"+stu.getName()+"%");
			}
			if(stu.getGrade()!=0 )
			{
				i++;
				ps.setInt(i, stu.getGrade());
			}
			if(stu.getBirthday()!=null &&!stu.getBirthday().equals(""))
			{
				i++;
				ps.setString(i, "%"+stu.getBirthday()+"%");
			}
			if(stu.getSex()!=null &&!stu.getSex().equals(""))
			{
				i++;
				ps.setString(i, "%"+stu.getSex()+"%");
			}
			if(stu.getYear()!=0 )
			{
				i++;
				ps.setInt(i, stu.getYear());
			}
			if(stu.getState()!=0)
			{
				i++;
				ps.setInt(i, stu.getState());
			}
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
				String studentID=rs.getString("studentID");
				String majorID=rs.getString("majorID");
				String name=rs.getString("name");
				int grade=rs.getInt("grade");
				String birthday=rs.getString("birthday");
				String sex=rs.getString("sex");
				String password=rs.getString("password");
				int year=rs.getInt("year");
				int state=rs.getInt("state");
				student stu1=new student(studentID,majorID,name,grade,birthday,sex,password,year,state);
			     l.add(stu1);
			    
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
	
	public boolean add(student stu)
	{
		Connection con=connect.getConnection();
		boolean tag=false;
		try {
			con.setAutoCommit(false);
			
			PreparedStatement ps=con.prepareStatement("insert into Student(studentID,majorID,name,grade,birthday,sex,password,year,state)values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, stu.getStudentID());
			ps.setString(2, stu.getMajorID());
			ps.setString(3, stu.getName());
			ps.setInt(4, stu.getGrade());
			ps.setString(5, stu.getBirthday());
			ps.setString(6, stu.getSex());
			ps.setString(7, stu.getPassword());
			ps.setInt(8, stu.getYear());
			ps.setInt(9, stu.getState());
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
	
	public student getOne(String Id)
	{
		  
					Connection con=connect.getConnection();
					student stu=null;
			
					try {
						con.setAutoCommit(false);
					
						
						
					
					PreparedStatement ps=con.prepareStatement("select * from Student where studentID=?");
					ps.setString(1, Id);
					ResultSet rs=ps.executeQuery();
					
					while(rs.next())
					{
						
						String studentID=rs.getString("studentID");
						String majorID=rs.getString("majorID");
						String name=rs.getString("name");
						int grade=rs.getInt("grade");
						String birthday=rs.getString("birthday");
						String sex=rs.getString("sex");
						String password=rs.getString("password");
						int year=rs.getInt("year");
						int state=rs.getInt("state");
					    stu=new student(studentID,majorID,name,grade,birthday,sex,password,year,state);
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
					
					return stu;  
					 
		
	}
	
	public boolean update(student stu)
	{
		
		Connection con=connect.getConnection();
		boolean tag=false;
		try {
			con.setAutoCommit(false);
			
			PreparedStatement ps=con.prepareStatement("update Student set majorID=?,name=?,grade=?,birthday=?,sex=?,password=?,year=?,state=? where studentID=?");
			ps.setString(9, stu.getStudentID());
			ps.setString(1, stu.getMajorID());
			ps.setString(2, stu.getName());
			ps.setInt(3, stu.getGrade());
			ps.setString(4, stu.getBirthday());
			ps.setString(5, stu.getSex());
			ps.setString(6, stu.getPassword());
			ps.setInt(7, stu.getYear());
			ps.setInt(8, stu.getState());
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
	
	public boolean delete(String[] studentID)
	{
		
		Connection con=connect.getConnection();
		boolean tag=false;
		try {
			con.setAutoCommit(false);
			for(int i=0;i<studentID.length;i++)
			{
			PreparedStatement ps=con.prepareStatement("delete from Student where studentID=?");
			
			ps.setString(1, studentID[i]);
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
