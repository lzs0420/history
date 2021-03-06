package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.studentCourse;
import com.use.studentCourseService;
/**
 * Servlet implementation class studentCourseUpdateServlet
 */
@WebServlet("/studentCourseUpdateServlet")
public class studentCourseUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public studentCourseUpdateServlet() {
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
		String studentID=request.getParameter("studentID");
		String courseID=request.getParameter("courseID");
		String semester=request.getParameter("semester");
		String temp=request.getParameter("score");
		int score,state;
		if(temp!=null&&!temp.equals("")){score=Integer.parseInt(temp);}
		   else{score=0;}
		temp=request.getParameter("state");
		if(temp!=null){state=Integer.parseInt(temp);}
		    else{state=0;}
		studentCourseService scs=new studentCourseService();
		studentCourse sc=new studentCourse(studentID,courseID,semester,score,state);
		if(scs.update(sc)){
			response.sendRedirect("studentCourseServlet");
		}
		else{
			response.sendRedirect("error.html");
		}
	}

}
