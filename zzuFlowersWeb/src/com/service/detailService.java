/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.service;

import com.bean.adress;
import com.bean.map_message;
import com.bean.plant;
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
public class detailService {

    public detailService() {
    }
    
    public List<plant> detail(String id) throws Exception{
         List<plant> l=new ArrayList<plant>();
         List<adress> l1=new ArrayList<adress>();
         String	pid="",pname="",padress="",pflorescence="",psummary="",pfeature="",pdistribution="",pvalue="",pculture="";
         int pflag=0;
	 Connection con=connect.getConnection();
	 ResultSet rs= null,rs1=null;
		try {
			PreparedStatement ps=con.prepareStatement("select * from plant where P_id = ?");
                        ps.setString(1, id);
			rs=ps.executeQuery();
			if(rs.next()){
                            pid=rs.getString("P_id");
                            pname=rs.getString("P_name");
                            pflorescence=rs.getString("P_florescence");
                            psummary=rs.getString("P_summary");
                            pfeature=rs.getString("P_feature");
                            pdistribution=rs.getString("P_distribution");
                            pvalue=rs.getString("P_value");
                            pculture=rs.getString("P_culture");
                            
                            PreparedStatement ps1=con.prepareStatement("select P_adress1,P_latitude,P_longitude,P_flag from adress where P_id = ?");
                            ps1.setString(1, pid);
                            rs1=ps1.executeQuery();
                            while(rs1.next()){
                                padress=rs1.getString("P_adress1");
                                pflag=rs1.getInt("P_flag");
                                adress a=new adress(padress,rs1.getString("P_latitude"),rs1.getString("P_longitude"),pflag);
                                l1.add(a);
                            }
			    
                         plant p=new plant(pid,pname,l1,pflorescence,psummary,pfeature,pdistribution,pvalue,pculture);
                         l.add(p);
				}
			connect.closeStatement(ps);
			connect.closeResultSet(rs);
			connect.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	   return l;
    }
    
    public List<map_message> showinMap(String id) throws Exception{
         List<map_message> l=new ArrayList<map_message>();
         
         String	pname="",padress="",platitude="",plongitude="";
         int pflag=0;
	 Connection con=connect.getConnection();
	 ResultSet rs= null,rs1=null;
		try {
			PreparedStatement ps=con.prepareStatement("select P_adress1,P_flag,P_latitude,P_longitude from adress where P_id = ?");
                        ps.setString(1, id);
			rs=ps.executeQuery();
			while(rs.next()){
                            padress=rs.getString("P_adress1");
                            pflag=rs.getInt("P_flag");
                            platitude=rs.getString("P_latitude");
                            plongitude=rs.getString("P_longitude");
                            
                            PreparedStatement ps1=con.prepareStatement("select P_name from plant where P_id = ?");
                            ps1.setString(1, id);
                            rs1=ps1.executeQuery();
                            if(rs1.next()){
                                pname=rs1.getString("P_name");
                            }
                            map_message mm=new map_message(id,pname,padress,pflag,platitude,plongitude);
                            l.add(mm);
                            connect.closeStatement(ps1);
                            connect.closeResultSet(rs1);
			}
                        connect.closeStatement(ps);
                        connect.closeResultSet(rs);
			connect.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	   return l;
    }
    
}
