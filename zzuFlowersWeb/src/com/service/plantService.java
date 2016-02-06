/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.service;

import com.bean.adress;
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
public class plantService {

	public String getN_id(int which) {
		String temp = null, temp1 = null;
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
				PreparedStatement ps = con
						.prepareStatement("select N_id from newplant");
				ResultSet rs = ps.executeQuery();

				if (rs.last()) {
					temp = rs.getString("N_id");
				}
			} else if (which == 1) {
				PreparedStatement ps = con
						.prepareStatement("select F_id from flag");
				ResultSet rs = ps.executeQuery();

				if (rs.last()) {
					temp = rs.getString("F_id");
				}
			} else if (which == 2) {
				PreparedStatement ps = con
						.prepareStatement("select P_id from plant");
				ResultSet rs = ps.executeQuery();

				if (rs.last()) {
					temp1 = rs.getString("P_id");
				}
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
		int x = Integer.parseInt(temp);
		x++;
		String[] ss = { "", "00000", "0000", "000", "00", "0" };
		temp = String.valueOf(x);
		temp = ss[temp.length()] + temp;
		return temp;
	}

	public String getP_id() {
		String temp1 = null;
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

			PreparedStatement ps = con
					.prepareStatement("select P_id from plant");
			ResultSet rs = ps.executeQuery();

			if (rs.last()) {
				temp1 = rs.getString("P_id");
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
		int x = Integer.parseInt(temp1);
		x++;
		String[] ss = { "", "0000", "000", "00", "0" };
		temp1 = String.valueOf(x);
		temp1 = ss[temp1.length()] + temp1;
		return temp1;
	}

	public boolean newUserPlant(String pname, String padress1) {
		connect c = new connect();
		boolean tag = false;
		Connection con = null;
		try {
			con = c.getConnection();
		} catch (Exception ex) {
			Logger.getLogger(plantService.class.getName()).log(Level.SEVERE,
					null, ex);
		}

		try {
			con.setAutoCommit(false);

			PreparedStatement ps = con
					.prepareStatement("insert into newplant(N_id,P_name,P_adress1,N_flag)values(?,?,?,?)");
			ps.setString(1, getN_id(0));
			ps.setString(2, pname);
			ps.setString(3, padress1);
			ps.setInt(4, 0);

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

	public boolean newFlag(String aid, String flag) {
		connect c = new connect();
		boolean tag = false;
		Connection con = null;
		try {
			con = c.getConnection();
		} catch (Exception ex) {
			Logger.getLogger(plantService.class.getName()).log(Level.SEVERE,
					null, ex);
		}

		try {
			con.setAutoCommit(false);

			PreparedStatement ps = con
					.prepareStatement("insert into flag(F_id,A_id,P_userflag,F_flag)values(?,?,?,?)");
			ps.setString(1, getN_id(1));
			ps.setString(2, aid);
			ps.setInt(3, Integer.parseInt(flag));
			ps.setInt(4, 0);

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

	public List<adress> getAdress(String id) {
		List<adress> l = new ArrayList<adress>();
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

			PreparedStatement ps = con
					.prepareStatement("select A_id,P_adress1,P_flag from adress where P_id = ?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				adress a = new adress(rs.getString("A_id"),
						rs.getString("P_adress1"), rs.getInt("P_flag"));
				l.add(a);
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

		return l;
	}

	public plant getOne(String Id) {
		plant p = null;
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

			

			PreparedStatement ps = con
					.prepareStatement("select * from plant where P_id=?");
			ps.setString(1, Id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				String pname = rs.getString("P_name");
				String pflorescence = rs.getString("P_florescence");
				String psummary = rs.getString("P_summary");
				String pfeature = rs.getString("P_feature");
				String pdistribution = rs.getString("P_distribution");
				String pvalue = rs.getString("P_value");
				String pculture = rs.getString("P_culture");
				p = new plant(Id, pname, pflorescence, psummary, pfeature,
						pdistribution, pvalue, pculture);
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

		return p;
	}

	public List<plant> getAll(plant pl) throws Exception {
		List<plant> l = new ArrayList<plant>();
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

			
			String sql = "select * from plant where 1=1";
			if (pl.getP_id() != null && !pl.getP_id().equals("")) {
				sql = sql + " and P_id like '%" + pl.getP_id() + "%'";
			}
			if (pl.getP_name() != null && !pl.getP_name().equals("")) {
				sql = sql + " and P_name like '%" + pl.getP_name() + "%'";
			}
			if (pl.getP_florescence() != null
					&& !pl.getP_florescence().equals("")) {
				sql = sql + " and P_florescence like '%"
						+ pl.getP_florescence() + "%'";
			}
			if (pl.getP_summary() != null && !pl.getP_summary().equals("")) {
				sql = sql + " and P_summary like '%" + pl.getP_summary() + "%'";
			}
			if (pl.getP_feature() != null && !pl.getP_feature().equals("")) {
				sql = sql + " and P_feature like '%" + pl.getP_feature() + "%'";
			}
			if (pl.getP_distribution() != null
					&& !pl.getP_distribution().equals("")) {
				sql = sql + " and P_distribution like '%"
						+ pl.getP_distribution() + "%'";
			}
			if (pl.getP_value() != null && !pl.getP_value().equals("")) {
				sql = sql + " and P_name like '%" + pl.getP_value() + "%'";
			}
			if (pl.getP_culture() != null && !pl.getP_culture().equals("")) {
				sql = sql + " and P_culture like '%" + pl.getP_culture() + "%'";
			}

			ResultSet rs = c.executeQuery1(sql);
			while (rs.next()) {
				String pid = rs.getString("P_id");
				String pname = rs.getString("P_name");
				String pflorescence = rs.getString("P_florescence");
				String psummary = rs.getString("P_summary");
				String pfeature = rs.getString("P_feature");
				String pdistribution = rs.getString("P_distribution");
				String pvalue = rs.getString("P_value");
				String pculture = rs.getString("P_culture");

				String sql1 = "select P_id,P_adress1,P_flag from adress where 1=1 and P_id="
						+ pid;
				if (pl.getList_adress().get(0).getP_flag() != 0) {
					sql1 += "and P_flag="
							+ pl.getList_adress().get(0).getP_flag();
				}
				if (pl.getList_adress().get(0).getP_adress1() != null) {
					sql1 += " and P_adress1 like '%"
							+ pl.getList_adress().get(0).getP_adress1() + "%'";
				}
				ResultSet rs1 = c.executeQuery1(sql1);
				List<adress> l1 = new ArrayList<adress>();
				while (rs1.next()) {
					String padress = rs1.getString("P_adress1");// System.out.println(padress);
					int pflag = rs1.getInt("P_flag");// System.out.println(pflag);
					adress a = new adress(padress, pflag);
					l1.add(a);
				}
				plant p = new plant(pid, pname, l1, pflorescence, psummary,
						pfeature, pdistribution, pvalue, pculture);
				l.add(p);
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

	public List<plant> getAll() throws Exception {
		List<plant> l = new ArrayList<plant>();
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

			

			String sql = "select * from plant where 1=1";

			ResultSet rs = c.executeQuery1(sql);
			while (rs.next()) {
				String pid = rs.getString("P_id");
				String pname = rs.getString("P_name");
				String pflorescence = rs.getString("P_florescence");
				String psummary = rs.getString("P_summary");
				String pfeature = rs.getString("P_feature");
				String pdistribution = rs.getString("P_distribution");
				String pvalue = rs.getString("P_value");
				String pculture = rs.getString("P_culture");

				String sql1 = "select P_id,P_adress1,P_flag from adress where 1=1 and P_id="
						+ pid;

				ResultSet rs1 = c.executeQuery1(sql1);

				List<adress> l1 = new ArrayList<adress>();
				while (rs1.next()) {
					String padress = rs1.getString("P_adress1");// System.out.println(padress);
					int pflag = rs1.getInt("P_flag");// System.out.println(pflag);
					adress a = new adress(padress, pflag);
					l1.add(a);
				}
				plant p = new plant(pid, pname, l1, pflorescence, psummary,
						pfeature, pdistribution, pvalue, pculture);
				l.add(p);
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

	public boolean add(plant p) {
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
					.prepareStatement("insert into plant(P_id,P_name,P_florescence,P_summary,P_feature,P_distribution,P_value,P_culture)values(?,?,?,?,?,?,?,?)");
			ps.setString(1, getP_id());
			ps.setString(2, p.getP_name());
			ps.setString(3, p.getP_florescence());
			ps.setString(4, p.getP_summary());
			ps.setString(5, p.getP_feature());
			ps.setString(6, p.getP_distribution());
			ps.setString(7, p.getP_value());
			ps.setString(8, p.getP_culture());
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

	public boolean update(plant p) {

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
					.prepareStatement("update plant set P_name = ?,P_florescence = ?,P_summary = ?,P_feature = ?,P_distribution = ?,P_value = ?,P_culture = ? where P_id = ?");
			ps.setString(8, p.getP_id());
			System.out.println(p.getP_id() + "##");
			ps.setString(1, p.getP_name());
			System.out.println(p.getP_name() + "&&");
			ps.setString(2, p.getP_florescence());
			ps.setString(3, p.getP_summary());
			ps.setString(4, p.getP_feature());
			ps.setString(5, p.getP_distribution());
			ps.setString(6, p.getP_value());
			ps.setString(7, p.getP_culture());

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

	public boolean delete(String[] pid) {

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
			for (int i = 0; i < pid.length; i++) {
				PreparedStatement ps = con
						.prepareStatement("delete from plant where P_id=?");

				ps.setString(1, pid[i]);
				ps.executeUpdate();
			}
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
