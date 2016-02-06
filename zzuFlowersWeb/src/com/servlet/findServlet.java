/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servlet;

import com.bean.map_message;
import com.bean.plant;
import com.service.findService;
import com.service.newjsonService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class findServlet extends HttpServlet {

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
            throws ServletException, IOException, Exception {
            response.setContentType("text/html;charset=gbk");
            request.setCharacterEncoding("gbk");
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
                findService fs=new findService();
                List<plant> l = null;
                List<map_message> m = null;
                String temp=request.getParameter("method");//System.out.println(temp+"1111");
                String temp1="";
                int xx1=Integer.parseInt(temp);//System.out.println(xx1);
                String xx2=request.getParameter("value");//System.out.println(xx2+"1111");
                String ss1=request.getParameter("kind1");System.out.println(ss1+"1111");
                String ss2=request.getParameter("kind2");System.out.println(ss2+"2222");
                if(xx1==0){
                    l=(List<plant>)fs.findAll();
                    temp1=newjsonService.newjson1(l);
                }
                else if(xx1==1){
                    l=(List<plant>)fs.findbyName(xx2);
                    temp1=newjsonService.newjson1(l);
                }
                else if(xx1==2){
                    l=(List<plant>)fs.findbyAll(xx2);
                    temp1=newjsonService.newjson1(l);
                }
                else if(xx1==3){
                    m=(List<map_message>)fs.findbyDistance();
                    temp1=newjsonService.newjson5(m);
                } 
                else if(xx1==4){
                    if(ss1.equals("all")&&ss2.equals("all")){
                        l=(List<plant>)fs.findAll();
                        temp1=newjsonService.newjson1(l);
                    }else{
                        l=(List<plant>)fs.findbyKind(ss1,ss2);
                        temp1=newjsonService.newjson1(l);}
                }
                out.write(temp1);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(findServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(findServlet.class.getName()).log(Level.SEVERE, null, ex);
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
