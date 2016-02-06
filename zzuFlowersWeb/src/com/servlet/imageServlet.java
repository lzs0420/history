/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servlet;

import com.bean.picture;
import com.service.imageService;
import com.service.newjsonService;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "imageServlet", urlPatterns = {"/imageServlet"})
public class imageServlet extends HttpServlet {

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
        String temp=request.getParameter("id");
        String temp1=request.getParameter("method");
        int method=Integer.parseInt(temp1);
        if(method==0){
            imageService.writrImage("D:/myproject/zzuflowersweb/web/image/mainimage/", temp+".jpg",response);
        }else if(method==1){
            List<picture> l=imageService.getImgpath(temp);
            String temp2=newjsonService.newjson4(l);
            try (PrintWriter out = response.getWriter()) {
                out.write(temp2);
                out.flush();
                out.close();
            }
        }else if(method==2){//System.out.println(temp+"111");
            imageService.writrImage("D:/myproject/zzuflowersweb/web/image/image1/", temp+".jpg",response);
        }else if(method==3){
            //File file=new File("D:/myproject/zzuflowersweb/web/image/image1/", temp+".jpg");  
            //String ss=imageService.getPic_id();
            //InputStream is = request.getInputStream();  
            //imageService.uploadImage("D:/myproject/zzuflowersweb/web/image/image1/", ss+".jpg", is);
              imageService is=new imageService();
              try (PrintWriter out = response.getWriter()) {
                  if(is.newPicture(temp)){
                      out.write("ok1");
                  }else{
                      out.write("fail");
                  }
                  out.flush();
                  out.close();
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
            Logger.getLogger(imageServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(imageServlet.class.getName()).log(Level.SEVERE, null, ex);
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
