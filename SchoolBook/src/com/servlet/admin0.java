/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servlet;

import com.service.BookService;
import com.service.BookTableService;
import com.service.LoginService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class admin0 extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet admin0</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet admin0 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
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
        //processRequest(request, response);
        String path=request.getServletPath();
         if(path.equals("/booktable"))
        {
            List l;
            BookTableService bts=new BookTableService();
            l=(List)bts.display_bt();
            request.setAttribute("l", l);
             request.getRequestDispatcher("Display_booktable.jsp").forward(request, response);
        }
          if(path.equals("/booktable1"))
        {
            List l;
            HttpSession session=request.getSession();
	    LoginService u=(LoginService)session.getAttribute("LoginService");
            String uid=u.getUserID();
            BookTableService bts=new BookTableService();
            l=(List)bts.display_bt1(uid);
            request.setAttribute("l", l);
             request.getRequestDispatcher("Display_booktable.jsp").forward(request, response);
        }
        if(path.equals("/store"))
        {
            List l;
            BookService bs=new BookService();
            l=bs.display_store();
            request.setAttribute("l", l);
            request.getRequestDispatcher("Display_store.jsp").forward(request, response);        
        }
        if(path.equals("/display"))
        {
            List l;
            BookService bs=new BookService();
            l=bs.display_store();
            request.setAttribute("l", l);
            request.getRequestDispatcher("book.jsp").forward(request, response);        
        }
        if(path.equals("/lackrecord"))
        {
            List l;
            BookTableService bts=new BookTableService();
            l=(List)bts.display_lr();
            request.setAttribute("l", l);
            request.getRequestDispatcher("Display_lackrecord.jsp").forward(request, response);
        }
        
        if(path.equals("/bookout"))
        {
            List l;
            BookTableService bts=new BookTableService();
            l=(List)bts.display_bo();
            request.setAttribute("l", l);
             request.getRequestDispatcher("Display_bookout.jsp").forward(request, response);
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
