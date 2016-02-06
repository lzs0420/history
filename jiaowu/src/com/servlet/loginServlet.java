package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import com.bean.user;


/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
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
		String userID=request.getParameter("userID");
		String userPWD=request.getParameter("userPWD");
		String job=request.getParameter("job");
		//System.out.println(userID+userPWD+job);
		user u=new user(userID, userPWD,job);
		HttpSession session=request.getSession();//�õ�SEESION����
		if(u.isExit(u))
		{
			session.setAttribute("user", u);
			//System.out.println("<meta http-equiv=\"Refresh\" content=\"2;index.jsp\">");
			response.sendRedirect("index.jsp");
		}
		else{
			response.sendRedirect("login.jsp");
		}
	}

}
