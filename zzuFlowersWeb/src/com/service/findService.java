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
public class findService {

	public findService() {
	}

	public List<plant> findbyKind(String kind1, String kind2) throws Exception {
		List<plant> l = new ArrayList<plant>();

		String pid = "", pname = "", padress = "", temp = "";
		int pflag = 0;
		connect c = new connect();
		Connection con = c.getConnection();
		ResultSet rs = null, rs1 = null, rs2 = null;
		try {
			kind1 = "'" + kind1 + "'";
			kind2 = "'%" + kind2 + "%'";
			String s = "select P_id from kind where K_1 =" + kind1
					+ "and K_2 like " + kind2 + "";
			// PreparedStatement
			// ps=con.prepareStatement("select P_id,P_name from plant where P_name like ?");
			// ps.setString(1, "'%"+name+"%'");//System.out.println(name+"111");
			// rs=ps.executeQuery();
			rs = c.executeQuery1(s); // System.out.println(name+"222");
			while (rs.next()) { // System.out.println(name+"333");
				pid = rs.getString("P_id");// System.out.println(pid);

				PreparedStatement ps2 = con
						.prepareStatement("select P_name from plant where P_id = ?");
				ps2.setString(1, pid);
				rs2 = ps2.executeQuery();
				if (rs2.next()) {
					pname = rs2.getString("P_name");// System.out.println(pname);
				}

				PreparedStatement ps1 = con
						.prepareStatement("select P_adress1,P_flag from adress where P_id = ?");
				ps1.setString(1, pid);
				rs1 = ps1.executeQuery();
				List<adress> l1 = new ArrayList<adress>();
				while (rs1.next()) {
					padress = rs1.getString("P_adress1");// System.out.println(padress);
					pflag = rs1.getInt("P_flag");// System.out.println(pflag);
					adress a = new adress(padress, pflag);
					l1.add(a);
				}

				plant m = new plant(pid, pname, l1);
				l.add(m);
			}
			// System.out.println(name+"!!!!!");
			connect.closeResultSet(rs);
			connect.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return l;
	}

	public List<plant> findbyName(String name) throws Exception {
		List<plant> l = new ArrayList<plant>();

		String pid = "", pname = "", padress = "", temp = "";
		int pflag = 0;
		connect c = new connect();
		Connection con = c.getConnection();
		ResultSet rs = null, rs1 = null;
		try {
			name = "'%" + name + "%'";
			String s = "select P_id,P_name from plant where P_name like "
					+ name + "";
			// PreparedStatement
			// ps=con.prepareStatement("select P_id,P_name from plant where P_name like ?");
			// ps.setString(1, "'%"+name+"%'");//System.out.println(name+"111");
			// rs=ps.executeQuery();
			rs = c.executeQuery1(s); // System.out.println(name+"222");
			while (rs.next()) { // System.out.println(name+"333");
				pid = rs.getString("P_id");// System.out.println(pid);
				pname = rs.getString("P_name");// System.out.println(pname);

				PreparedStatement ps1 = con
						.prepareStatement("select P_adress1,P_flag from adress where P_id = ?");
				ps1.setString(1, pid);
				rs1 = ps1.executeQuery();
				List<adress> l1 = new ArrayList<adress>();
				while (rs1.next()) {
					padress = rs1.getString("P_adress1");// System.out.println(padress);
					pflag = rs1.getInt("P_flag");// System.out.println(pflag);
					adress a = new adress(padress, pflag);
					l1.add(a);
				}

				plant m = new plant(pid, pname, l1);
				l.add(m);
			}
			// System.out.println(name+"!!!!!");
			connect.closeResultSet(rs);
			connect.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return l;
	}

	public List<plant> findbyAll(String str) throws Exception {
		List<plant> l = new ArrayList<plant>();

		String pid = "", pname = "", padress = "";
		int pflag = 0;
		connect c = new connect();
		Connection con = c.getConnection();
		ResultSet rs = null, rs1 = null;
		try {
			str = "'%" + str + "%'";
			String s = "select P_id,P_name from plant where P_name like " + str
					+ " or P_florescence like " + str + " or P_summary like "
					+ str + " or P_feature like " + str
					+ " or P_distribution like " + str + " or P_value like "
					+ str + " or P_culture like " + str + "";
			/*
			 * PreparedStatement ps=con.prepareStatement("select P_id,P_name
			 * from plant where P_name like ? or P_florescence like ? or
			 * P_summary like ? or P_feature like ? or P_distribution like ? or
			 * P_value like ? or P_culture like ?"); ps.setString(1,
			 * "%"+str+"%"); ps.setString(2, "%"+str+"%"); ps.setString(3,
			 * "%"+str+"%"); ps.setString(4, "%"+str+"%"); ps.setString(5,
			 * "%"+str+"%"); ps.setString(6, "%"+str+"%"); ps.setString(7,
			 * "%"+str+"%"); rs=ps.executeQuery();
			 */
			rs = c.executeQuery1(s);
			while (rs.next()) {
				pid = rs.getString("P_id");
				pname = rs.getString("P_name");

				PreparedStatement ps1 = con
						.prepareStatement("select P_adress1,P_flag from adress where P_id = ?");
				ps1.setString(1, pid);
				rs1 = ps1.executeQuery();
				List<adress> l1 = new ArrayList<adress>();
				while (rs1.next()) {
					padress = rs1.getString("P_adress1");
					pflag = rs1.getInt("P_flag");
					adress a = new adress(padress, pflag);
					l1.add(a);
				}

				plant m = new plant(pid, pname, l1);
				l.add(m);
			}
			// connect.closeStatement(ps);
			connect.closeResultSet(rs);
			connect.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return l;
	}

	public List<plant> findAll() throws Exception {
		List<plant> l = new ArrayList<plant>();

		String pid = "", pname = "", padress = "";
		int pflag = 0;
		Connection con = connect.getConnection();
		ResultSet rs = null, rs1 = null;
		try {
			PreparedStatement ps = con
					.prepareStatement("select P_id,P_name from plant ");

			rs = ps.executeQuery();
			while (rs.next()) {
				pid = rs.getString("P_id");
				pname = rs.getString("P_name");

				PreparedStatement ps1 = con
						.prepareStatement("select P_adress1,P_flag from adress where P_id = ?");
				ps1.setString(1, pid);
				rs1 = ps1.executeQuery();
				List<adress> l1 = new ArrayList<adress>();
				while (rs1.next()) {
					padress = rs1.getString("P_adress1");// System.out.println(padress);
					pflag = rs1.getInt("P_flag");// System.out.println(pflag);
					adress a = new adress(padress, pflag);
					l1.add(a);
				}

				plant m = new plant(pid, pname, l1);// System.out.println(l1.toString());
				l.add(m);
			}
			connect.closeStatement(ps);
			connect.closeResultSet(rs);
			connect.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return l;
	}

	public List<map_message> findbyDistance() throws Exception { // 暂未实现
		List<map_message> l = new ArrayList<map_message>();

		String pid = "", pname = "", padress = "", platitude = "", plongitude = "";
		int pflag = 0;
		Connection con = connect.getConnection();
		ResultSet rs = null, rs1 = null;
		try {
			PreparedStatement ps = con
					.prepareStatement("select P_id,P_adress1,P_flag,P_latitude,P_longitude from adress ");
			rs = ps.executeQuery();
			while (rs.next()) {
				pid = rs.getString("P_id");
				padress = rs.getString("P_adress1");
				pflag = rs.getInt("P_flag");
				platitude = rs.getString("P_latitude");
				plongitude = rs.getString("P_longitude");

				PreparedStatement ps1 = con
						.prepareStatement("select P_name from plant where P_id = ?");
				ps1.setString(1, pid);
				rs1 = ps1.executeQuery();
				if (rs1.next()) {
					pname = rs1.getString("P_name");
				}
				map_message mm = new map_message(pid, pname, padress, pflag,
						platitude, plongitude);
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
