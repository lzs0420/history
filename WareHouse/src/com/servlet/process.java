/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Administrator
 */
public class process extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        response.setContentType("text/html;charset=UTF-8");
        java.sql.Connection conn=null;
        java.lang.String strConn;
        java.sql.PreparedStatement preparedStmt=null;
        java.sql.ResultSet sqlRst=null;PrintWriter out = response.getWriter();
        try{ 
//           Class.forName("org.gjt.mm.mysql.Driver").newInstance();
//           conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost/warehouse_m", "root", "123456");
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/warehouse_m", "root", "123456");
           preparedStmt=conn.prepareStatement("select work_id,password,name,job from staff where work_id=?");
           String temp=request.getParameter("work_id");
           String log=request.getParameter("job")+"/"+request.getParameter("job")+".jsp";
           HttpSession session=request.getSession(true);
           session.setAttribute("work_id", temp);
           session.setAttribute("log", log);
           session.setAttribute("job", request.getParameter("job"));
           preparedStmt.setString(1,temp);
           sqlRst= preparedStmt.executeQuery();
           if(sqlRst.next()){
              if(sqlRst.getString("job").equals(request.getParameter("job"))){
              if(sqlRst.getString("password").equals(request.getParameter("password"))){
                  session.setAttribute("name", sqlRst.getString("name"));
                  out.println("<center><h2>"+temp+" "+sqlRst.getString("name")+","+"登录成功！！</h2>"
                        + "<br>2秒后跳转</center>");
                  out.print("<script>var t1=setTimeout(\"window.location.href=('"+log+"')\",2000);</script>");
                //out.println("<script>confirm(\"点击“确定”继续查看本页，\n点击“取消”返回首页。\")</script>");
            }
            else{
                  out.println("<center><h2>密码错误！！</h2></center>");
                  //out.print("<script>alert(\"再次向您问好！在这里，我们向您演示\" + '\\n' + \"如何向警告框添加折行。\")</script>");
                  out.print("<script>if(confirm(\"找回密码点击确定（sure）\"+'\\n'+\"重新登陆点击取消（cancel）\"))"
                    + "{window.open(\"public/passwordfind.jsp?work_id='"+sqlRst.getString(1)+"'\",\"_self\");}"
                    + "else{window.open(\"public/login.html\",\"_self\");}</script>");
              }
              }else{out.println("<center>职务错误，请<a href=\"javascript:history.back()\">重新登录</a></center>"); }
           }else{out.println("<center>账户不存在，请<a href=\"javascript:history.back()\">重新登录</a></center>");}
        }catch(java.sql.SQLException e){
              out.println(e.toString());
         }finally{
          if(sqlRst!=null) try{sqlRst.close();}catch(SQLException e1){
                out.println(e1.toString());
                }finally{
                 try{
                      if(preparedStmt!=null)preparedStmt.close();}catch(SQLException e2){
                             out.println(e2.toString());
                     }finally{
                 try{if(conn!=null) conn.close();}catch(SQLException e3){
                        out.println(e3.toString());
                            }
                       }
                 }
       } 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(process.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(process.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(process.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(process.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(process.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(process.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
