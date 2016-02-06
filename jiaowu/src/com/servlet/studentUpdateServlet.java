package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.student;
import com.use.studentService;

/**
 * Servlet implementation class studentAddServlet
 */
@WebServlet("/studentUpdateServlet")
public class studentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public studentUpdateServlet() {
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
		String majorID=request.getParameter("majorID");
		String name=request.getParameter("name");
		String temp=request.getParameter("grade");
		int grade,year,state;
		if(temp!=null){grade=Integer.parseInt(temp);}
		   else{grade=0;}
		String birthday=request.getParameter("birthday");
		String sex=request.getParameter("sex");
		String password=request.getParameter("password");
		temp=request.getParameter("year");
		if(temp!=null){year=Integer.parseInt(temp);}
		    else{year=0;}
		temp=request.getParameter("state");
		if(temp!=null){state=Integer.parseInt(temp);}
		    else{state=0;}
		studentService ss=new studentService();
		student stu1=new student(studentID,majorID,name,grade,birthday,sex,password,year,state);
		//System.out.println(studentID+majorID+name+grade+birthday+sex+password+year+state);
		if(ss.update(stu1)){
			response.sendRedirect("studentServlet");
		}
		else{
			response.sendRedirect("error.html");
		}
	}

}
