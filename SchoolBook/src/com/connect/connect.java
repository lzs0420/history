/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.connect;
import java.sql.*;
/**
 *
 * @author Administrator
 */
public class connect {
    private Statement Stmt=null;
    ResultSet rs=null;
    
    private String db;
    
    public connect() { }
    
    public static Connection getConnection() throws Exception
    {
        Connection conn=null;
        try
        {
            Class.forName("org.gjt.mm.mysql.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/orderbook", "root", "123456");
        }
        catch (Exception ex)
        {
            System.err.println("aq.executeQuery: " + ex.getMessage());
        }
        return conn;
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
    public void closeConn(Connection conn)
    {
        
        try{   conn.close();  }
        catch(SQLException ex)
        {
            System.err.println("aq.executeQuery: " + ex.getMessage());
        }
    }
}

    //执行查询类的SQL语句，有返回集
   /* public ResultSet executeQuery1(String sql)
    {
        Connection conn=null;
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
        Connection conn=null;
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
    }*/
   