/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.bean.Book_in;
import com.bean.Material;
import com.connect.connect;
import java.text.SimpleDateFormat;
/**
 *
 * @author Administrator
 */
public class Book_inService {
    
    public Book_inService() {
    }
    
    
    
    public String idadd() throws Exception{
        Connection con=connect.getConnection();
        String biid="",oid="";
        try {
        PreparedStatement ps=con.prepareStatement("select Max(CAST(BI_id AS SIGNED)) from BookIn");
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
            biid=rs.getString(1);
        }
        java.util.Date date = new java.util.Date();
        SimpleDateFormat sy1=new SimpleDateFormat("yyyyMMdd");
        String nowdate=sy1.format(date);
        if(biid==null||biid=="")
        {
             oid=nowdate.concat("00001");
        }
        else
        {
            String str1=biid.substring(0,8);
            if(str1.equals(nowdate)){
               oid=String.valueOf(Long.parseLong(biid)+1);
            }
             else{      
               oid=nowdate.concat("00001");
         }
        }
        } catch (SQLException e) {
			
			e.printStackTrace();
      
                }
        return oid;
    }
    
    public void addBookIn(String id,String aid,int n) throws Exception{
        Connection con=connect.getConnection();
        String bid="";int num=0;
        ResultSet rs,rs1;
        try {           //out.print(btid);
			PreparedStatement ps=con.prepareStatement("select * from Material where M_id=?");
                        ps.setString(1, id);
			rs=ps.executeQuery();
			while(rs.next()){
                            bid=rs.getString("B_id");
                           // aid=rs.getString("A_id");
                           // num=rs.getInt("B_no");   
                        }
                      // out.print(bid);
                        java.util.Date date = new java.util.Date();
                        SimpleDateFormat sy1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        String nowdate=sy1.format(date);
                         PreparedStatement ps1=con.prepareStatement("insert into BookIn values(?,?,?,?,?)");
                         ps1.setString(1, idadd());
                         ps1.setString(2,nowdate);
                         ps1.setString(3, bid);
                         ps1.setInt(4, n);
                         ps1.setString(5, aid);
                         ps1.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
                }
    }
    
    
    public List display_bi() throws Exception{
         List l=new ArrayList();
         String	biid,bidate,aid,aname="",bid="",bname="",bpress="",bauthor="";
         int num=0,bprice = 0;
	 Connection con=connect.getConnection();
	 ResultSet rs,rs1,rs2 = null;
		try {
			PreparedStatement ps=con.prepareStatement("select * from BookIn");
			rs=ps.executeQuery();
			while(rs.next()){
                            biid=rs.getString("BI_id");
                            bidate=rs.getString("BI_date");
                            bid=rs.getString("B_id");
                            num=rs.getInt("B_no");
                            aid=rs.getString("A_id");
                            PreparedStatement ps2=con.prepareStatement("select * from Admin where A_id=?");
			    ps2.setString(1,aid);
			    rs2=ps2.executeQuery();
			if(rs2.next()){
			    aname=rs2.getString("A_name");
                            
					}
			    PreparedStatement ps1=con.prepareStatement("select * from Book where B_id=?");
			    ps1.setString(1,bid);
			    rs1=ps1.executeQuery();
			if(rs1.next()){
			    bname=rs1.getString("B_name");
                            bprice=rs1.getInt("B_price");
                            bpress=rs1.getString("B_press");
                            bauthor=rs1.getString("B_author");
					}
                         Book_in m=new Book_in(biid,bidate,bid,num,aid,aname,bname,bprice,bpress,bauthor);
                         l.add(m);
				}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	   return l;
    }
}
