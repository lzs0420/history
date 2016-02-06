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
public class ware_in {
    private String in_id;
    private String ware_id;
    private int in_quantuty;
    private String in_time;
    private int in_price;
    private String work_id;
    private String in_approve;

    /**
     * @return the in_id
     */
    public String getIn_id() {
        return in_id;
    }

    /**
     * @param in_id the in_id to set
     */
    public void setIn_id(String in_id) {
        this.in_id = in_id;
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
     * @return the in_quantuty
     */
    public int getIn_quantuty() {
        return in_quantuty;
    }

    /**
     * @param in_quantuty the in_quantuty to set
     */
    public void setIn_quantuty(int in_quantuty) {
        this.in_quantuty = in_quantuty;
    }

    /**
     * @return the in_time
     */
    public String getIn_time() {
        return in_time;
    }

    /**
     * @param in_time the in_time to set
     */
    public void setIn_time(String in_time) {
        this.in_time = in_time;
    }

    /**
     * @return the in_price
     */
    public int getIn_price() {
        return in_price;
    }

    /**
     * @param in_price the in_price to set
     */
    public void setIn_price(int in_price) {
        this.in_price = in_price;
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
     * @return the in_approve
     */
    public String getIn_approve() {
        return in_approve;
    }

    /**
     * @param in_approve the in_approve to set
     */
    public void setIn_approve(String in_approve) {
        this.in_approve = in_approve;
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
    
    public int totalprice(){
       return this.in_price*this.in_quantuty;
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
        String sql="update ware_in set in_approve='yes' where in_id="+ss;
        getConn("warehouse_m","root","123456");
        executeUpdate2(sql);
    }
    
}
