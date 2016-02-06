/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.service;

import com.bean.BookOut;
import com.bean.BookTable;
import com.bean.LackRecord;
import com.connect.ConnectionManager;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class BookTableService {
    public List display_bt(){
         List l=new ArrayList();
         String	btid,uid,uname = null,uphone = null,bid,bname = null,btdate=null,btsure;
         int num,bstore=0;
         float bprice=0;
	 Connection con=ConnectionManager.getConnection();
	 ResultSet rs,rs1,rs2 = null;
		try {
			PreparedStatement ps=con.prepareStatement("select * from BookTable ");
			rs=ps.executeQuery();
			while(rs.next()){
                            btid=rs.getString("BT_id");
                            bid=rs.getString("B_id");
                            uid=rs.getString("U_id");
                            num=rs.getInt("B_no");
                            btdate=rs.getString("BT_date");
                            btsure=rs.getString("BT_sure");
			    PreparedStatement ps1=con.prepareStatement("select * from Book where B_id=?");
			    ps1.setString(1,bid);
			    rs1=ps1.executeQuery();

			while(rs1.next()){
			    bname=rs1.getString("B_name");
                            bprice=rs1.getFloat("B_price");
                            bstore=rs1.getInt("B_store");
					}
                             PreparedStatement ps2=con.prepareStatement("select * from `User` where U_id=?");
                             ps2.setString(1, uid);
                             rs2=ps2.executeQuery();
                         while(rs2.next()){
                             uname=rs2.getString("U_name");
                             uphone=rs2.getString("U_phone");
                         }
                        // out.print(bid);
                         BookTable bt=new BookTable(btid,uname,uphone,bid,bname,bprice,bstore,num,btdate,btsure);
                         l.add(bt);
				}
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	   return l;
}
    
    public List display_bt1(String uid){
         List l=new ArrayList();
         String	btid,uname = null,uphone = null,bid,bname = null,btdate=null,btsure;
         int num,bstore=0;
         float bprice=0;
	 Connection con=ConnectionManager.getConnection();
	 ResultSet rs,rs1,rs2 = null;
		try {
			PreparedStatement ps=con.prepareStatement("select * from BookTable where U_id=?");
			ps.setString(1, uid);
                        rs=ps.executeQuery();
			while(rs.next()){
                            btid=rs.getString("BT_id");
                            bid=rs.getString("B_id");
                            btsure=rs.getString("BT_sure");
                            num=rs.getInt("B_no");
                            btdate=rs.getString("BT_date");
			    PreparedStatement ps1=con.prepareStatement("select * from Book where B_id=?");
			    ps1.setString(1,bid);
			    rs1=ps1.executeQuery();

			while(rs1.next()){
			    bname=rs1.getString("B_name");
                            bprice=rs1.getFloat("B_price");
                             bstore=rs1.getInt("B_store");
					}
                             PreparedStatement ps2=con.prepareStatement("select * from `User` where U_id=?");
                             ps2.setString(1, uid);
                             rs2=ps2.executeQuery();
                         while(rs2.next()){
                             uname=rs2.getString("U_name");
                             uphone=rs2.getString("U_phone");
                         }
                        // out.print(bid);
                         BookTable bt=new BookTable(btid,uname,uphone,bid,bname,bprice,bstore,num,btdate,btsure);
                         l.add(bt);
				}
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	   return l;
}
    
    
     public List display_lr(){
         List l=new ArrayList();
         String	lrid,lrdate,lrsure,bid,bname = null;
         int num=0;
	 Connection con=ConnectionManager.getConnection();
	 ResultSet rs,rs1,rs2 = null;
		try {
			PreparedStatement ps=con.prepareStatement("select * from LackRecord");
			rs=ps.executeQuery();
			while(rs.next()){
                            lrid=rs.getString("LR_id");
                            lrdate=rs.getString("LR_date");
                            bid=rs.getString("B_id");
                            num=rs.getInt("B_no");
                            lrsure=rs.getString("LR_sure");
			    PreparedStatement ps1=con.prepareStatement("select * from Book where B_id=?");
			    ps1.setString(1,bid);
			    rs1=ps1.executeQuery();
			while(rs1.next()){
			    bname=rs1.getString("B_name");
					}
                         LackRecord lr=new LackRecord(lrid,lrdate,bid,bname,num,lrsure);
                         l.add(lr);
				}
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	   return l;
    }
    public List display_bo(){
         List l=new ArrayList();
         String	boid,bodate,uid,uname = null,uphone = null,bid,bname = null;
         int num=0;
	 Connection con=ConnectionManager.getConnection();
	 ResultSet rs,rs1,rs2 = null;
		try {
			PreparedStatement ps=con.prepareStatement("select * from BookOut ");
			rs=ps.executeQuery();
			while(rs.next()){
                            boid=rs.getString("BO_id");
                            bodate=rs.getString("BO_date");
                            bid=rs.getString("B_id");
                            num=rs.getInt("B_no");
                            uid=rs.getString("U_id");
			    PreparedStatement ps1=con.prepareStatement("select * from Book where B_id=?");
			    ps1.setString(1,bid);
			    rs1=ps1.executeQuery();

			while(rs1.next()){
			    bname=rs1.getString("B_name");
					}
                             PreparedStatement ps2=con.prepareStatement("select * from `User` where U_id=?");
                             ps2.setString(1, uid);
                             rs2=ps2.executeQuery();
                         while(rs2.next()){
                             uname=rs2.getString("U_name");
                             uphone=rs2.getString("U_phone");
                         }
                        // out.print(bid);
                         BookOut bo=new BookOut(boid,bodate,uname,uphone,bid,bname,num);
                         l.add(bo);
				}
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	   return l;
    }
     public String idadd_lr(){
        Connection con=ConnectionManager.getConnection();
        String boid="",oid="";
        try {
        PreparedStatement ps=con.prepareStatement("select Max(CAST(LR_id AS SIGNED)) from LackRecord");
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
            boid=rs.getString(1);
        }
        java.util.Date date = new java.util.Date();
        SimpleDateFormat sy1=new SimpleDateFormat("yyyyMMdd");
        String nowdate=sy1.format(date);
        if(boid==null||boid=="")
        {
             oid=nowdate.concat("00001");
        }
        else
        {
            String str1=boid.substring(0,8);
            if(str1.equals(nowdate)){
               oid=String.valueOf(Long.parseLong(boid)+1);
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
     
     public String idadd_m(){
        Connection con=ConnectionManager.getConnection();
        String boid="",oid="";
        try {
        PreparedStatement ps=con.prepareStatement("select Max(CAST(M_id AS SIGNED)) from Material");
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
            boid=rs.getString(1);
        }
        java.util.Date date = new java.util.Date();
        SimpleDateFormat sy1=new SimpleDateFormat("yyyyMMdd");
        String nowdate=sy1.format(date);
        if(boid==null||boid=="")
        {
             oid=nowdate.concat("00001");
        }
        else
        {
            String str1=boid.substring(0,8);
            if(str1.equals(nowdate)){
               oid=String.valueOf(Long.parseLong(boid)+1);
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
     
    public void create_lackrecord(String btid){
        String bid="0";int bno=0;
         Connection con=ConnectionManager.getConnection();
	 ResultSet rs=null,rs1=null;
		try {
                        PreparedStatement ps0=con.prepareStatement("update BookTable set BT_sure = ? where BT_id = ?");
                        ps0.setString(1,"yes");
                        ps0.setString(2, btid);
                        ps0.executeUpdate();
                        ConnectionManager.closeStatement(ps0);
                        
			PreparedStatement ps=con.prepareStatement("select * from BookTable where BT_id=?");
			ps.setString(1,btid);
			rs=ps.executeQuery();
                        while(rs.next())
                        {
			bid=rs.getString("B_id");
			bno=rs.getInt("B_no");
                        }
		       PreparedStatement ps1=con.prepareStatement("select * from LackRecord where B_id=?");
			ps.setString(1,bid);
			rs=ps.executeQuery();
                        java.util.Date date = new java.util.Date();
                        SimpleDateFormat sy1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        String nowdate=sy1.format(date);
                        if(rs.next()){
                            PreparedStatement ps2=con.prepareStatement("update LackRecord set LR_date = ? , B_no = ? where B_id = ?");
                            ps2.setString(1,nowdate);
                            ps2.setString(3, bid);
                            ps2.setInt(2, bno);
                            ps2.executeUpdate();
                            ConnectionManager.closeStatement(ps2);
                        }
                        else{
                            PreparedStatement ps2=con.prepareStatement("insert into LackRecord values(?,?,?,?,?)");
                            ps2.setString(1, idadd_lr());
                            ps2.setString(2,nowdate);
                            ps2.setString(3, bid);
                            ps2.setInt(4, bno);
                            ps2.setString(5, "no");
                            ps2.executeUpdate();
                            ConnectionManager.closeStatement(ps2);
                        }
                        
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closeResultSet(rs1);
                        
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
 }
    
    public void create_material(String lrid){
        String bid="0";int bno=0;
         Connection con=ConnectionManager.getConnection();
	 ResultSet rs=null,rs1=null;
		try {
                        PreparedStatement ps0=con.prepareStatement("update LackRecord set LR_sure = ? where LR_id = ?");
                        ps0.setString(1,"yes");
                        ps0.setString(2, lrid);
                        ps0.executeUpdate();
                        ConnectionManager.closeStatement(ps0);
                        
			PreparedStatement ps=con.prepareStatement("select * from LackRecord where LR_id=?");
			ps.setString(1,lrid);
			rs=ps.executeQuery();
                        while(rs.next())
                        {
			bid=rs.getString("B_id");
			bno=rs.getInt("B_no");
                        }
		     PreparedStatement ps1=con.prepareStatement("select * from Material where B_id=?");
			ps.setString(1,bid);
			rs=ps.executeQuery();
                        java.util.Date date = new java.util.Date();
                        SimpleDateFormat sy1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        String nowdate=sy1.format(date);
                        if(rs.next()){
                            PreparedStatement ps2=con.prepareStatement("update Material set M_date = ? , B_no = ? where B_id = ?");
                            ps2.setString(1,nowdate);
                            ps2.setString(3, bid);
                            ps2.setInt(2, bno);
                            ps2.executeUpdate();
                            ConnectionManager.closeStatement(ps2);
                        }
                        else{
                            PreparedStatement ps2=con.prepareStatement("insert into Material values(?,?,?,?)");
                            ps2.setString(1, idadd_m());
                            ps2.setString(2,nowdate);
                            ps2.setString(3, bid);
                            ps2.setInt(4, bno);
                            ps2.executeUpdate();
                            ConnectionManager.closeStatement(ps2);
                        }
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeResultSet(rs);
                        ConnectionManager.closeResultSet(rs1);
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
 }
    
    public String idadd(){
        Connection con=ConnectionManager.getConnection();
        String boid="",oid="";
        try {
        PreparedStatement ps=con.prepareStatement("select Max(CAST(BO_id AS SIGNED)) from BookOut");
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
            boid=rs.getString(1);
        }
        java.util.Date date = new java.util.Date();
        SimpleDateFormat sy1=new SimpleDateFormat("yyyyMMdd");
        String nowdate=sy1.format(date);
        if(boid==null||boid=="")
        {
             oid=nowdate.concat("00001");
        }
        else
        {
            String str1=boid.substring(0,8);
            if(str1.equals(nowdate)){
               oid=String.valueOf(Long.parseLong(boid)+1);
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
    public void create_order(String btid){
        Connection con=ConnectionManager.getConnection();
        String bid="",uid="";int num=0;
        ResultSet rs,rs1;
        try {           //out.print(btid);
			PreparedStatement ps=con.prepareStatement("select * from BookTable where BT_id=?");
                        ps.setString(1, btid);
			rs=ps.executeQuery();
			while(rs.next()){
                            bid=rs.getString("B_id");
                            uid=rs.getString("U_id");
                            num=rs.getInt("B_no");   
                        }
                      // out.print(bid);
                        java.util.Date date = new java.util.Date();
                        SimpleDateFormat sy1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        String nowdate=sy1.format(date);
                         PreparedStatement ps1=con.prepareStatement("insert into BookOut values(?,?,?,?,?)");
                         ps1.setString(1, idadd());
                         ps1.setString(2,nowdate);
                         ps1.setString(3, bid);
                         ps1.setInt(4, num);
                         ps1.setString(5, uid);
                         ps1.executeUpdate();
                         PreparedStatement ps2=con.prepareStatement("update Book set B_store=B_store-? where B_id=?");
                         ps2.setInt(1, num);
                         ps2.setString(2, bid);
                         ps2.executeUpdate();
                         PreparedStatement ps3=con.prepareStatement("delete from BookTable where BT_id=?");
                         ps3.setString(1,btid);
                         ps3.executeUpdate();
                         ConnectionManager.closeStatement(ps3);
                         ConnectionManager.closeStatement(ps2);
                         ConnectionManager.closeStatement(ps1);
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
                }
    }
}
