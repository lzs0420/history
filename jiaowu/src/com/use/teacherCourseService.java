package com.use;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.HttpSession;

import com.bean.course;
import com.bean.teacher;
import com.bean.user;
import com.use.connect;
import com.bean.studentCourse;
import com.bean.teacherCourse;

public class teacherCourseService {

	public teacherCourseService() {
		super();
		
	}
	
	public List getAll(String t){
		List l=new ArrayList();
		Connection con=connect.getConnection();
		courseService cs=new courseService();
		String courseID;
		try {
			con.setAutoCommit(false);
		
			
			
		
		PreparedStatement ps=con.prepareStatement("select * from TeacherCourse where teacherID=?");
		ps.setString(1, t);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			courseID=rs.getString("courseID");
			course cou=cs.getOne(courseID);
			//System.out.println(courseID);
			//course cou1=new course(cou.getCourseID(),cou.getCourseName(),cou.getCredit(),cou.getPeopleNum(),
					//cou.getPeriod(),cou.getState());
		    l.add(cou);
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
		System.out.println("!!!");
		return l;
	}

}
