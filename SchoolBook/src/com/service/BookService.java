/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.service;

import com.bean.Book;
import com.bean.BookDetail;
import com.bean.CartDetail;
import com.connect.ConnectionManager;
import static java.lang.System.out;
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
public class BookService {
    public BookDetail display_book(String bid){
        String bname="",bauth="",bpress="";
        float bprice=0;
        BookDetail bd=new BookDetail(); 
	 Connection con=ConnectionManager.getConnection();
	 ResultSet rs = null;
		try {
			PreparedStatement ps=con.prepareStatement("select * from Book where B_id=?");
			ps.setString(1,bid);
			rs=ps.executeQuery();
                        while(rs.next())
                        {
			bname=rs.getString("B_name");
			bauth=rs.getString("B_author");
                        bpress=rs.getString("B_press");
                        bprice=rs.getFloat("B_price");
                        }
			bd=new BookDetail(bid, bname,bauth,bprice,bpress);
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	   return bd;
}
   public List display_store(){
        List l=new ArrayList();
	 Connection con=ConnectionManager.getConnection();
	 ResultSet rs = null;
              try{
		      PreparedStatement ps=con.prepareStatement("select * from Book");
		      rs=ps.executeQuery();
			while(rs.next()){
                            String bid=rs.getString("B_id");
			    String bname=rs.getString("B_name");
			    String bauth=rs.getString("B_author");
                            String bpress=rs.getString("B_press");
                            float bprice=rs.getFloat("B_price");
                            int bstore=rs.getInt("B_store");
			    Book b=new Book(bid, bname,bauth,bprice,bpress,bstore);
			    l.add(b);
					}
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	   return l;
   }
    
}
