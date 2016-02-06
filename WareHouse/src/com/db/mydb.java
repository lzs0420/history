/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.db;
import java.sql.*;
/**
 *
 * @author Administrator
 */
public class mydb {
    private Statement Stmt=null;
    ResultSet rs=null;
    private Connection conn=null;
    private String db;
    
    public mydb() { }
    
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
    
}
