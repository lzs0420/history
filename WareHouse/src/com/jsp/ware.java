/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jsp;
import java.sql.*;
/**
 *
 * @author Administrator
 */
public class ware {
    private String ware_id;
    private String ware_name;
    private String ware_business;
    private String ware_brand;
    private int ware_real;
    private String ware_type;
    private int ware_min;
    private int ware_pricein;
    private int ware_priceout;
   private String ware_mfdate;
   private String ware_indate;
   
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
     * @return the ware_name
     */
    public String getWare_name() {
        return ware_name;
    }

    /**
     * @param ware_name the ware_name to set
     */
    public void setWare_name(String ware_name) {
        this.ware_name = ware_name;
    }

    /**
     * @return the ware_real
     */
    public int getWare_real() {
        return ware_real;
    }

    /**
     * @param ware_real the ware_real to set
     */
    public void setWare_real(int ware_real) {
        this.ware_real = ware_real;
    }

    /**
     * @return the ware_type
     */
    public String getWare_type() {
        return ware_type;
    }

    /**
     * @param ware_type the ware_type to set
     */
    public void setWare_type(String ware_type) {
        this.ware_type = ware_type;
    }

    /**
     * @return the ware_min
     */
    public int getWare_min() {
        return ware_min;
    }

    /**
     * @param ware_min the ware_min to set
     */
    public void setWare_min(int ware_min) {
        this.ware_min = ware_min;
    }

    
    public String stringadd(String string){
       int temp=Integer.parseInt(string);
       temp++;
       string=String.valueOf(temp);
       return string;
     }
    
    private Statement Stmt=null;
    private ResultSet rs=null;
    private Connection conn=null;
    private String db;
    
    public void getConn(String dbname, String uid, String pwd) throws Exception
    {
        try
        {
            setDb("jdbc:mysql://localhost/" +dbname);
            Class.forName("org.gjt.mm.mysql.Driver").newInstance();
            setConn(DriverManager.getConnection(getDb(), uid, pwd));
        }
        catch (Exception ex)
        {
            System.err.println("aq.executeQuery: " + ex.getMessage());
        }
    }
    //执行查询类的SQL语句，有返回集
    public ResultSet executeQuery1(String sql)
    {
        setRs(null);
        try
        {
            setStmt(getConn().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY));
            setRs(getStmt().executeQuery(sql));
        }
        catch(SQLException ex)
        {
            System.err.println("aq.executeQuery:"+ex.getMessage());
        }
        return getRs();
    }
    //执行更新类的SQL语句，无返回集
    public void executeUpdate2(String sql)
    {
        setStmt(null);
        setRs(null);
        try
        {
            setStmt(getConn().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY));
            getStmt().executeUpdate(sql);
            getStmt().close();
            getConn().close();
        }
        catch(SQLException ex)
        {
            System.err.println("aq.executeQuery: " + ex.getMessage());
        }
    }
    //关闭对象
    public void closeStmt()
    {
        try{   getStmt().close();   }
        catch(SQLException ex)
        {
            System.err.println("aq.executeQuery: " + ex.getMessage());
        }
    }
    public void closeConn()
    {
        try{   getConn().close();  }
        catch(SQLException ex)
        {
            System.err.println("aq.executeQuery: " + ex.getMessage());
        }
    }

    /**
     * @return the ware_business
     */
    public String getWare_business() {
        return ware_business;
    }

    /**
     * @param ware_business the ware_business to set
     */
    public void setWare_business(String ware_business) {
        this.ware_business = ware_business;
    }

    /**
     * @return the ware_brand
     */
    public String getWare_brand() {
        return ware_brand;
    }

    /**
     * @param ware_brand the ware_brand to set
     */
    public void setWare_brand(String ware_brand) {
        this.ware_brand = ware_brand;
    }

    /**
     * @return the ware_pricein
     */
    public int getWare_pricein() {
        return ware_pricein;
    }

    /**
     * @param ware_pricein the ware_pricein to set
     */
    public void setWare_pricein(int ware_pricein) {
        this.ware_pricein = ware_pricein;
    }

    /**
     * @return the ware_priceout
     */
    public int getWare_priceout() {
        return ware_priceout;
    }

    /**
     * @param ware_priceout the ware_priceout to set
     */
    public void setWare_priceout(int ware_priceout) {
        this.ware_priceout = ware_priceout;
    }

    /**
     * @return the ware_mfdate
     */
    public String getWare_mfdate() {
        return ware_mfdate;
    }

    /**
     * @param ware_mfdate the ware_mfdate to set
     */
    public void setWare_mfdate(String ware_mfdate) {
        this.ware_mfdate = ware_mfdate;
    }

    /**
     * @return the ware_indate
     */
    public String getWare_indate() {
        return ware_indate;
    }

    /**
     * @param ware_indate the ware_indate to set
     */
    public void setWare_indate(String ware_indate) {
        this.ware_indate = ware_indate;
    }

    /**
     * @return the Stmt
     */
    public Statement getStmt() {
        return Stmt;
    }

    /**
     * @param Stmt the Stmt to set
     */
    public void setStmt(Statement Stmt) {
        this.Stmt = Stmt;
    }

    /**
     * @return the rs
     */
    public ResultSet getRs() {
        return rs;
    }

    /**
     * @param rs the rs to set
     */
    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    /**
     * @return the conn
     */
    public Connection getConn() {
        return conn;
    }

    /**
     * @param conn the conn to set
     */
    public void setConn(Connection conn) {
        this.conn = conn;
    }

    /**
     * @return the db
     */
    public String getDb() {
        return db;
    }

    /**
     * @param db the db to set
     */
    public void setDb(String db) {
        this.db = db;
    }
}
