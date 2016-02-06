/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.service;
import com.bean.LackRecord;
import com.bean.Material;
import com.connect.connect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Administrator
 */
public class MaterialService {

    public MaterialService() {
    }
    
    public List display_m() throws Exception{
         List l=new ArrayList();
         String	mid,mdate,bid="",bname="",bpress="",bauthor="";
         int num=0,bprice = 0;
	 Connection con=connect.getConnection();
	 ResultSet rs,rs1,rs2 = null;
		try {
			PreparedStatement ps=con.prepareStatement("select * from Material");
			rs=ps.executeQuery();
			while(rs.next()){
                            mid=rs.getString("M_id");
                            mdate=rs.getString("M_date");
                            bid=rs.getString("B_id");
                            num=rs.getInt("B_no");
			    PreparedStatement ps1=con.prepareStatement("select * from Book where B_id=?");
			    ps1.setString(1,bid);
			    rs1=ps1.executeQuery();
			while(rs1.next()){
			    bname=rs1.getString("B_name");
                            bprice=rs1.getInt("B_price");
                            bpress=rs1.getString("B_press");
                            bauthor=rs1.getString("B_author");
					}
                         Material m=new Material(mid,mdate,bid,bname,bprice,bauthor,bpress,num);
                         l.add(m);
				}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	   return l;
    }
    
    public void booksure(String id,int n) throws Exception{
         Connection con=connect.getConnection();
		boolean tag=false;
                int m=0;
		try {
			con.setAutoCommit(false);
			PreparedStatement ps1=con.prepareStatement("select B_no from Material where M_id = ?");
			ps1.setString(1,id);
			ResultSet rs= ps1.executeQuery();
                        if(rs.next()){
                            m=rs.getInt(1)-n;
                            if(m<=0){ tag=true;}
                        }
                        if(tag){
                        PreparedStatement ps2=con.prepareStatement("delete from Material where M_id = ?");
                        ps2.setString(1,id);
                        ps2.executeUpdate();
                        }
                        else{
			PreparedStatement ps=con.prepareStatement("update Material set B_no = ? where M_id = ?");
			ps.setInt(1, m);
			ps.setString(2,id);
			ps.executeUpdate();
                        }
			con.commit();
			
		} catch (SQLException e1) {
			
			try {
				con.rollback();
			} catch (SQLException e2) {
				
				e2.printStackTrace();
			}
			e1.printStackTrace();
		}
		
		
        
    }
    
    public boolean bookupdate(String id,int n) throws Exception{
         Connection con=connect.getConnection();
		boolean tag=false;
                int m=0;
		try {
			con.setAutoCommit(false);
			PreparedStatement ps1=con.prepareStatement("select * from Book where B_id = ?");
			ps1.setString(1,id);
			ResultSet rs= ps1.executeQuery();
                        if(rs.next()){
                            m=rs.getInt("B_store")+n;
                            tag=true;
                        }
                        PreparedStatement ps2=con.prepareStatement("update Book set B_store = ? where B_id = ?");
                        ps2.setInt(1,m);
                        ps2.setString(2,id);
                        ps2.executeUpdate();
			con.commit();
			
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
