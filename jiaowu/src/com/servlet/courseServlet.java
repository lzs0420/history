package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.course;
import com.bean.student;
import com.use.courseService;


import java.util.List;
/**
 * Servlet implementation class courseServlet
 */
@WebServlet("/courseServlet")
public class courseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public courseServlet() {
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
	@SuppressWarnings("null")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String courseID=request.getParameter("courseID");
		String courseName=request.getParameter("courseName");
		String temp=request.getParameter("credit");
		int credit,period,peopleNum,state;
		if(temp!=null&&!temp.equals("")){credit=Integer.parseInt(temp);}
		   else{credit=0;}
		temp=request.getParameter("period");
		if(temp!=null&&!temp.equals("")){period=Integer.parseInt(temp);}
		    else{period=0;}
		temp=request.getParameter("peopleNum");
		if(temp!=null&&!temp.equals("")){peopleNum=Integer.parseInt(temp);}
		    else{peopleNum=0;}
		temp=request.getParameter("state");
		if(temp!=null&&!temp.equals("")){state=Integer.parseInt(temp);}
		    else{state=0;}
		courseService ss=new courseService();
		course stu1=new course(courseID,courseName,credit,period,peopleNum,state);
		//System.out.println(studentID+majorID+name+grade+birthday+sex+password+year+state);
		List l=(List)ss.getAll(stu1);
		request.setAttribute("l", l);
		RequestDispatcher rd=request.getRequestDispatcher("courseManage.jsp");//�õ�ת����
		rd.forward(request, response);//����ת��
	}

}
