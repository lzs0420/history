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
public class staff {
    private String work_id;
    private String name;
    private int age;
    private String sex;
    private String job;
    private String password;

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
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the age
     */
    public int getAge() {
        return age;
    }

    /**
     * @param age the age to set
     */
    public void setAge(int age) {
        this.age = age;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * @param sex the sex to set
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * @return the job
     */
    public String getJob() {
        return job;
    }

    /**
     * @param job the job to set
     */
    public void setJob(String job) {
        this.job = job;
    }
    
    public String stringadd(String string){
       int temp=Integer.parseInt(string);
       temp++;
       string=String.valueOf(temp);
       return string;
     }
    
    public String passwordfind(String string,String answer) throws Exception{
        String sql="select password,answer from staff where work_id="+string;
        getConn("warehouse_m", "root", "123456");
        rs=executeQuery1(sql);
        rs.next();
        if(rs.getString("answer").equals(answer)){
            setPassword(rs.getString("password"));
        }
        closeStmt();
        closeConn();
        return getPassword();
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
   
}
