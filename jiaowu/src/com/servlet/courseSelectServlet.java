package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;
import com.bean.user;
import com.use.studentCourseService;

/**
 * Servlet implementation class courseSelectServlet
 */
@WebServlet("/courseSelectServlet")
public class courseSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public courseSelectServlet() {
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
		String[] values=request.getParameterValues("courseSelect");
		studentCourseService scs=new studentCourseService();
		HttpSession session=request.getSession();
		user user1=(user)session.getAttribute("user");
		if(scs.courseSelect(values,user1)){
			response.sendRedirect("scoreSearch.jsp");
		}
		else{
			System.out.println("!!!!!!!!!!");
		}
	}

}
