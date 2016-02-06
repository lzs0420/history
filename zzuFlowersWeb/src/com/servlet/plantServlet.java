/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servlet;

import com.bean.adress;
import com.service.newjsonService;
import com.service.plantService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONException;

/**
 *
 * @author Administrator
 */
public class plantServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=gbk");
            request.setCharacterEncoding("gbk");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet plantServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet plantServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        
            plantService ps=new plantService();
            List<adress> l=null;
            String temp=request.getParameter("method");//System.out.println(temp+"1111");
            String temp1="";
            int xx1=Integer.parseInt(temp);//System.out.println(xx1);
            String xx5=request.getParameter("flag");
            String xx4=request.getParameter("id");
            String xx2=request.getParameter("name");//System.out.println(xx2+"1111");
            String xx3=request.getParameter("adress1");//System.out.println(xx2+"1111");
            
            if(xx1==0){
                if(xx2!=null&&xx3!=null){
                    if(ps.newUserPlant(xx2, xx3))
                    {
                        out.write("ok");
                    }else{
                        out.write("fail");
                    }
                }
            }
            if(xx1==1){
                l=ps.getAdress(xx4);
                try {
                    temp1=newjsonService.newjson6(l);
                } catch (JSONException ex) {
                    Logger.getLogger(plantServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
                out.write(temp1);
            }
             if(xx1==2){
                  if(xx4!=null&&xx5!=null){
                    if(ps.newFlag(xx4, xx5))
                    {
                        out.write("ok");
                    }else{
                        out.write("fail");
                    }
                }
             }
            out.flush();
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
