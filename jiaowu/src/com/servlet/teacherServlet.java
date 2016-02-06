package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.teacher;
import com.use.teacherService;
import java.util.List;

/**
 * Servlet implementation class studentServlet
 */
@WebServlet("/teacherServlet")
public class teacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public teacherServlet() {
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
		String teacherID=request.getParameter("teacherID");
		String collegeID=request.getParameter("collegeID");
		String name=request.getParameter("name");
		String temp=request.getParameter("state");
		int state;
		String birthday=request.getParameter("birthday");
		String sex=request.getParameter("sex");
		String password=request.getParameter("password");
		if(temp!=null){state=Integer.parseInt(temp);}
		    else{state=0;}
		teacherService ss=new teacherService();
		teacher stu1=new teacher(teacherID,collegeID,name,sex,birthday,password,state);
		//System.out.println(studentID+majorID+name+grade+birthday+sex+password+year+state);
		List l=(List)ss.getAll(stu1);
		request.setAttribute("l", l);
		request.setAttribute("teacher", stu1);
		RequestDispatcher rd=request.getRequestDispatcher("teacherManage.jsp");//�õ�ת����
		rd.forward(request, response);//����ת��
	}

}
