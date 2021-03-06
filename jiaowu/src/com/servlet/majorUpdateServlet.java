package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.major;
import com.use.majorService;

/**
 * Servlet implementation class majorUpdateServlet
 */
@WebServlet("/majorUpdateServlet")
public class majorUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public majorUpdateServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String majorID=request.getParameter("majorID");
		String majorName=request.getParameter("majorName");
		String collegeID=request.getParameter("collegeID");
		majorService ms=new majorService();
		major m=new major(majorID,collegeID,majorName);
		if(ms.update(m)){
			response.sendRedirect("majorServlet");
		}
		else{
			response.sendRedirect("error.html");
		}
	}

}
