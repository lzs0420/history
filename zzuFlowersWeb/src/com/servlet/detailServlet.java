/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servlet;

import com.bean.map_message;
import com.bean.plant;
import com.service.detailService;
import com.service.newjsonService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class detailServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
                /* out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet findServlet</title>");            
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Servlet findServlet at " + request.getContextPath() + "</h1>");
                out.println("</body>");
                out.println("</html>");*/
                detailService ds=new detailService();
                List<plant> l = null;
                List<map_message> m = null;
               // Map<String, String[]> params = request.getParameterMap(); 
                //System.out.println("!!!!");
                String temp=request.getParameter("method");//System.out.println(temp+"!!!!");
                int xx1=Integer.parseInt(temp);
                String xx2=request.getParameter("id");
                if(xx1==0){
                    l=(List<plant>)ds.detail(xx2);
                    temp=newjsonService.newjson3(l);
                }
                else if(xx1==1){
                    m=(List<map_message>)ds.showinMap(xx2);
                    temp=newjsonService.newjson5(m);
                }
                
                //else if(xx1==3){
               //     l=(List<plant>)fs.findbyDistance(temp);
               // }
                
                out.write(temp);
                out.flush();
                out.close();
        }
            catch(Exception e){
                System.out.println(e);  
            e.printStackTrace(); 
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
