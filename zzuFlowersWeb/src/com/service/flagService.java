/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.service;

import com.bean.adress;
import com.bean.flag;
import com.bean.plant;
import com.connect.connect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * 
 * @author Administrator
 */
public class flagService {

	public flagService() {
	}

	public List<flag> getAll(int which) throws Exception {
		List<flag> l = new ArrayList<flag>();
		String sql = null;
		connect c = new connect();
		Connection con = null;
		try {
			con = c.getConnection();
		} catch (Exception ex) {
			Logger.getLogger(plantService.class.getName()).log(Level.SEVERE,
					null, ex);
		}

		try {
			con.setAutoCommit(false);

			

			if (which == 0) {
				sql = "select * from flag where F_flag = 0";
			} else if (which == 1) {
				sql = "select * from flag where F_flag = 1";
			} else if (which == -1) {
				sql = "select * from flag where F_flag = -1";
			} else {
				sql = "select * from flag ";
			}
			ResultSet rs = c.executeQuery1(sql);
			while (rs.next()) {
				String fid = rs.getString("F_id");
				String aid = rs.getString("A_id");
				int puserflag = rs.getInt("P_userflag");
				int fflag = rs.getInt("F_flag");
				String padress = null, pname = null;

				String sql1 = "select P_id,P_adress1 from adress where A_id="
						+ aid;
				ResultSet rs1 = c.executeQuery1(sql1);
				List<adress> l1 = new ArrayList<adress>();
				if (rs1.next()) {
					padress = rs1.getString("P_adress1");// System.out.println(padress);
					String pid = rs1.getString("P_id");// System.out.println(pflag);

					String sql2 = "select P_name from plant where P_id=" + pid;
					ResultSet rs2 = c.executeQuery1(sql2);
					if (rs2.next()) {
						pname = rs2.getString("P_name");
					}
				}
				flag f = new flag(fid, aid, pname, padress, puserflag, fflag);
				l.add(f);
			}
			con.commit();
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

		return l;
	}

	public boolean update(String id, int which) {
		connect c = new connect();
		Connection con = null;
		try {
			con = c.getConnection();
		} catch (Exception ex) {
			Logger.getLogger(plantService.class.getName()).log(Level.SEVERE,
					null, ex);
		}
		boolean tag = false;
		try {
			con.setAutoCommit(false);

			PreparedStatement ps = con
					.prepareStatement("update flag set F_flag = ? where F_id = ?");
			ps.setString(2, id);
			ps.setInt(1, which);

			ps.executeUpdate();
			con.commit();
			tag = true;
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
