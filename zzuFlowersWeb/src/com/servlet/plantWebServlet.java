/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servlet;

import com.bean.adress;
import com.bean.plant;
import com.service.plantService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class plantWebServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        String path;
        path=request.getServletPath();
        if(path.equals("/plantFind")){
            String pid=request.getParameter("P_id");
            String pname=request.getParameter("P_name");
            String pflorescence=request.getParameter("P_florescence");
            String psummary=request.getParameter("P_summary");
            String pfeature=request.getParameter("P_feature");
            String pdistribution=request.getParameter("P_distribution");
            String pvalue=request.getParameter("P_value");
            String pculture=request.getParameter("P_culture");
            String padress1=request.getParameter("P_adress1");
            String pflag1=request.getParameter("P_flag");
            int pflag;
            if(pflag1==null) pflag=0;
            else pflag=Integer.parseInt(pflag1);
            plantService ps=new plantService();
            List l=new ArrayList<adress>();
            l.add(new adress(padress1,pflag));
            plant p=new plant(pid,pname,l,pflorescence,psummary,pfeature,pdistribution,pvalue,pculture);
            List l1=(List<plant>)ps.getAll(p);
	    request.setAttribute("l", l1);
	    RequestDispatcher rd=request.getRequestDispatcher("plantManage.jsp");
	    rd.forward(request, response);
            //response.sendRedirect("plantManage.jsp");
        }else if(path.equals("/plantAdd")){
            String pid=request.getParameter("P_id");
            String pname=request.getParameter("P_name");
            String pflorescence=request.getParameter("P_florescence");
            String psummary=request.getParameter("P_summary");
            String pfeature=request.getParameter("P_feature");
            String pdistribution=request.getParameter("P_distribution");
            String pvalue=request.getParameter("P_value");
            String pculture=request.getParameter("P_culture");
            //System.out.println(pid+"!"+pname);
             plantService ps=new plantService();
             plant p=new plant(pid,pname,pflorescence,psummary,pfeature,pdistribution,pvalue,pculture);
             if(ps.add(p)){
			response.sendRedirect("plantFind");
		}
		else{
			response.sendRedirect("error.html");
		}
        }else if(path.equals("/plantUpdate")){
            String pid=request.getParameter("P_id");System.out.println(pid+"!");
            String pname=request.getParameter("P_name");
            String pflorescence=request.getParameter("P_florescence");
            String psummary=request.getParameter("P_summary");
            String pfeature=request.getParameter("P_feature");
            String pdistribution=request.getParameter("P_distribution");
            String pvalue=request.getParameter("P_value");
            String pculture=request.getParameter("P_culture");
             plantService ps=new plantService();
             plant p=new plant(pid,pname,pflorescence,psummary,pfeature,pdistribution,pvalue,pculture);
             if(ps.update(p)){
			response.sendRedirect("plantFind");
		}
		else{
			response.sendRedirect("error.html");
		}
        }else if(path.equals("/plantUpdate1")){
            String pid=request.getParameter("id");//System.out.println(pid+"!");
            plantService ps=new plantService();
            plant p=ps.getOne(pid);//System.out.println(p.getP_name()+"!");
            request.setAttribute("plant", p);
            //response.sendRedirect("plantUpdate.jsp");
	    RequestDispatcher rd=request.getRequestDispatcher("plantUpdate.jsp");
	    rd.forward(request, response);
        }else if(path.equals("/plantDelete")){
            String[] ids=request.getParameterValues("P_ids");
            plantService ps=new plantService();
            if(ps.delete(ids)){
			response.sendRedirect("plantFind");
		}
		else{
			response.sendRedirect("error.html");
		}
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
            Logger.getLogger(plantWebServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(plantWebServlet.class.getName()).log(Level.SEVERE, null, ex);
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
