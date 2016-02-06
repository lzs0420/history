package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;
import com.bean.user;
import com.bean.teacherComment;
import com.use.teacherCommentService;
/**
 * Servlet implementation class teacherCommentServlet
 */
@WebServlet("/teacherCommentServlet")
public class teacherCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public teacherCommentServlet() {
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
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session=request.getSession();
		user user1=(user)session.getAttribute("user");
		teacherCommentService tcs=new teacherCommentService();
		String studentID=request.getParameter("studentID");
		String teacherID=request.getParameter("teacherID");
		String courseID=request.getParameter("courseID");
		String time="2014";
		String comment=request.getParameter("comment");

		String str=request.getParameter("score");
		int score=Integer.valueOf(str);
		System.out.println(teacherID+studentID+courseID+time+comment+score);
		teacherComment tc=new teacherComment(teacherID,studentID,courseID,time,comment,score);
		if(tcs.TComment(tc)){
			response.sendRedirect("teacherComment.jsp");
		}
		else{
			System.out.println("!!!!!!!!!!");
		}
	}

}
