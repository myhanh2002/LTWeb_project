package controller;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.Dao;
import model.*;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		Dao dao = new Dao();
		User user = dao.checkLogin(userName, password);
		
		
		if(user == null) {
			request.setAttribute("message", "Thông tin đăng nhập chưa chính xác!!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			
			//save at cookie
			Cookie cookieUser = new Cookie("UserCookie", userName);
			Cookie cookiePassword = new Cookie("PasswordCookie", password);
			
			// thời gian tồn tại của cookie
			cookieUser.setMaxAge(60*60*24);
			cookiePassword.setMaxAge(60*60*24);
			
			response.addCookie(cookieUser);
			response.addCookie(cookiePassword);
			
			request.getRequestDispatcher("HomeServlet").forward(request, response);;
		}

	}

}
