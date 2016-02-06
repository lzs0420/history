/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.LoginService;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
public class loginServlet extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String userID,userPWD;
        int xx=0;
	String job=(String)request.getParameter("hidden1");
        if(job.equals("User")){
                userID=request.getParameter("U_id");
		userPWD=request.getParameter("U_pwd");
              //System.out.println(userID+userPWD+job);
              }
        else if(job.equals("User1")){
                userID=request.getParameter("U_id1");
		userPWD=request.getParameter("U_pwd1");
                job="User";
                //System.out.println(userID+userPWD+job);
        }
        else{
                userID=request.getParameter("A_id");
		userPWD=request.getParameter("A_pwd");}
		System.out.println(userID+userPWD+job);
		LoginService u=new LoginService(userID, userPWD,job);
		HttpSession session=request.getSession();//�õ�SEESION����
		if(u.isExit(u))
		{
                        xx=u.value(u);
                        u=new LoginService(userID, userPWD,job,xx);
			session.setAttribute("LoginService", u);
			//System.out.println("<meta http-equiv=\"Refresh\" content=\"2;index.jsp\">");
			response.sendRedirect("index.jsp");
		}
		else{
			response.sendRedirect("error.html");
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
        } catch (Exception ex) {
            Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (Exception ex) {
            Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
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
