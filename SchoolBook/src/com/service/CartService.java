/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.service;

import com.bean.Cart;
import com.bean.CartDetail;
import com.connect.ConnectionManager;
import static java.lang.System.out;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 
 * @author hello
 */

public class CartService {
	public void create_booktable(String uid, String cid[]) {
		Connection con = ConnectionManager.getConnection();
		String btid = "";
		java.util.Date date = new java.util.Date();
		SimpleDateFormat sy1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String nowdate = sy1.format(date);
		try {
			PreparedStatement ps = null, ps1 = null, ps2 = null;
			ResultSet rs1 = null;
			for (int i = 0; i < cid.length; i++) {
				ps1 = con
						.prepareStatement("select MAX(CAST(BT_id AS SIGNED)) from booktable");
				rs1 = ps1.executeQuery();
				while (rs1.next()) {
					btid = rs1.getString(1);
				}
				if (btid == "" || btid == null) {
					btid = "1";
				} else {
					btid = String.valueOf(Integer.parseInt(btid) + 1);
				}
				out.print(btid);
				ps = con.prepareStatement("insert into BookTable (select ?,?,B_id,B_no,U_id,? from cart where C_id=?)");
				ps.setString(1, btid);
				ps.setString(2, nowdate);
				ps.setString(3, "no");
				ps.setString(4, cid[i]);
				ps.executeUpdate();
				ps2 = con.prepareStatement("delete from cart where C_id=? ");
				ps2.setString(1, cid[i]);
				ps2.executeUpdate();
			}
			ConnectionManager.closeResultSet(rs1);
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeStatement(ps1);
			ConnectionManager.closeStatement(ps2);
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void add_cart(String uid, String bid, int num) {

		Connection con = ConnectionManager.getConnection();
		String cartid = "0";
		try {
			PreparedStatement ps1 = con
					.prepareStatement("select Max(CAST(C_id AS SIGNED)) FROM cart");
			ResultSet rs;
			rs = ps1.executeQuery();

			// rs.setFetchDirection(ResultSet.FETCH_FORWARD);
			if (rs.next()) {
				cartid = rs.getString(1);
			}
			if (cartid == null) {
				cartid = "0";

			}
			cartid = String.valueOf(Integer.parseInt(cartid) + 1);
			PreparedStatement ps = con
					.prepareStatement("insert into Cart values(?,?,?,?)");
			ps.setString(1, cartid);
			ps.setString(2, uid);
			ps.setString(3, bid);
			ps.setInt(4, num);
			ps.executeUpdate();
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeStatement(ps1);
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

	public List display_cart(String uid) {
		List l = new ArrayList();
		Connection con = ConnectionManager.getConnection();
		ResultSet rs = null;
		ResultSet rs1 = null;
		try {
			PreparedStatement ps = con
					.prepareStatement("select * from Cart where U_id=?");
			ps.setString(1, uid);
			rs = ps.executeQuery();

			while (rs.next()) {
				String bid = rs.getString("B_id");
				int num = rs.getInt("B_no");
				String cartid = rs.getString("C_id");

				PreparedStatement ps1 = con
						.prepareStatement("select * from Book where B_id=?");
				ps1.setString(1, bid);
				rs1 = ps1.executeQuery();

				while (rs1.next()) {
					String bname = rs1.getString("B_name");
					String bauth = rs1.getString("B_author");
					String bpress = rs1.getString("B_press");
					float bprice = rs1.getFloat("B_price");
					// out.print(bname);
					CartDetail cd = new CartDetail(cartid, bid, bname, bauth,
							bpress, num, bprice);
					l.add(cd);
				}

			}
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return l;
	}

	public void delete_cart(String cartid) {
		Connection con = ConnectionManager.getConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("delete from Cart where C_id=?");
			ps.setString(1, cartid);
			ps.executeUpdate();
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

}
