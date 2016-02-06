/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.service;

import com.bean.User;
import com.connect.connect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
public class UserService {

    public UserService() {
    }
    
    public String getPwd(String Id) throws Exception
	{
		  
					Connection con=connect.getConnection();
					String xx="";
					try {
						con.setAutoCommit(false);
					
						
						
					
					PreparedStatement ps=con.prepareStatement("select * from User where U_id=?");
					ps.setString(1, Id);
					ResultSet rs=ps.executeQuery();
					
					while(rs.next())
					{
						xx=rs.getString("U_pwd");
					}
					 con.commit();
				   
					
					} catch (SQLException e1) {
						
						
						e1.printStackTrace();
					}
					
					return xx;  
					 
		
	}
	
	public boolean update(String pwd,String id) throws Exception
	{
		
		Connection con=connect.getConnection();
		boolean tag=false;
		try {
			con.setAutoCommit(false);
			
			PreparedStatement ps=con.prepareStatement("update User set U_pwd=? where U_id=?");
			
			ps.setString(1, pwd);
			ps.setString(2, id);
			
			ps.executeUpdate();
			con.commit();
			tag=true;
		} catch (SQLException e1) {
			
			
			e1.printStackTrace();
		}
		
		return tag;
		
	}
    
}
