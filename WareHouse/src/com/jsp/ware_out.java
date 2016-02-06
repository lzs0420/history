/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jsp;
import java.sql.*;
import java.text.SimpleDateFormat;
/**
 *
 * @author Administrator
 */
public class ware_out {
    private String out_id;
    private String ware_id;
    private int out_quantuty;
    private String out_time;
    private int out_price;
    private String work_id;
    private String out_approve;

    /**
     * @return the out_id
     */
    public String getOut_id() {
        return out_id;
    }

    /**
     * @param out_id the out_id to set
     */
    public void setOut_id(String out_id) {
        this.out_id = out_id;
    }

    /**
     * @return the ware_id
     */
    public String getWare_id() {
        return ware_id;
    }

    /**
     * @param ware_id the ware_id to set
     */
    public void setWare_id(String ware_id) {
        this.ware_id = ware_id;
    }

    /**
     * @return the out_quantuty
     */
    public int getOut_quantuty() {
        return out_quantuty;
    }

    /**
     * @param out_quantuty the out_quantuty to set
     */
    public void setOut_quantuty(int out_quantuty) {
        this.out_quantuty = out_quantuty;
    }

    /**
     * @return the out_time
     */
    public String getOut_time() {
        return out_time;
    }

    /**
     * @param out_time the out_time to set
     */
    public void setOut_time(String out_time) {
        this.out_time = out_time;
    }

    /**
     * @return the out_price
     */
    public int getOut_price() {
        return out_price;
    }

    /**
     * @param out_price the out_price to set
     */
    public void setOut_price(int out_price) {
        this.out_price = out_price;
    }

    /**
     * @return the work_id
     */
    public String getWork_id() {
        return work_id;
    }

    /**
     * @param work_id the work_id to set
     */
    public void setWork_id(String work_id) {
        this.work_id = work_id;
    }

    /**
     * @return the out_approve
     */
    public String getOut_approve() {
        return out_approve;
    }

    /**
     * @param out_approve the out_approve to set
     */
    public void setOut_approve(String out_approve) {
        this.out_approve = out_approve;
    }
    
    public String stringadd(String string){
       int temp=Integer.parseInt(string);
       String[] ss={"","0000","000","00","0"};
       temp++;
       string=String.valueOf(temp);
       string=ss[string.length()]+string;
       return string;
     }
    
    public String nowdate(String nowdate){
         java.util.Date date = new java.util.Date();
         SimpleDateFormat sy1=new SimpleDateFormat("yyyy-MM-dd");
         nowdate=sy1.format(date);
         return nowdate;
    }
    
    public int price(String ware_id) throws Exception{
        String sql="select * from ware where ware_id='"+ware_id+"'";
        getConn("warehouse_m","root","123456");
        rs = executeQuery1(sql);
        rs.next();
        this.setOut_price(rs.getInt("ware_priceout"));
        this.closeStmt();
        this.closeConn();
        return this.out_price;
    }
    
    private Statement Stmt=null;
    ResultSet rs=null;
    private Connection conn=null;
    private String db;
    
    public void getConn(String dbname, String uid, String pwd) throws Exception
    {
        try
        {
            db = "jdbc:mysql://localhost/" +dbname;
            Class.forName("org.gjt.mm.mysql.Driver").newInstance();
            conn = DriverManager.getConnection(db, uid, pwd);
        }
        catch (Exception ex)
        {
            System.err.println("aq.executeQuery: " + ex.getMessage());
        }
    }
    //执行查询类的SQL语句，有返回集
    public ResultSet executeQuery1(String sql)
    {
        rs = null;
        try
        {
       Stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs = Stmt.executeQuery(sql);
        }
        catch(SQLException ex)
        {
            System.err.println("aq.executeQuery:"+ex.getMessage());
        }
        return rs;
    }
    //执行更新类的SQL语句，无返回集
    public void executeUpdate2(String sql)
    {
        Stmt = null;
        rs=null;
        try
        {
       Stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
       Stmt.executeUpdate(sql);
            Stmt.close();
            conn.close();
        }
        catch(SQLException ex)
        {
            System.err.println("aq.executeQuery: " + ex.getMessage());
        }
    }
    //关闭对象
    public void closeStmt()
    {
        try{   Stmt.close();   }
        catch(SQLException ex)
        {
            System.err.println("aq.executeQuery: " + ex.getMessage());
        }
    }
    public void closeConn()
    {
        try{   conn.close();  }
        catch(SQLException ex)
        {
            System.err.println("aq.executeQuery: " + ex.getMessage());
        }
    }
    
    public void approve(String ss) throws Exception
    {
        String sql="update ware_out set out_approve='yes' where out_id="+ss;
        getConn("warehouse_m","root","123456");
        executeUpdate2(sql);
    }
}
