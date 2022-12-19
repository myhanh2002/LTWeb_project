package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
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
		String repassword = request.getParameter("repassword");
		String phoneNumber = request.getParameter("phoneNumber");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		
		if (!password.equals(repassword)) {
			request.setAttribute("error", "Mật khẩu không khớp");
			response.sendRedirect("register.jsp");
		} else {
			try {
				Dao dao = new Dao();
				User usercheck = dao.checkUserExist(userName);
				request.setAttribute("exit", "Tài khoản đã tồn tại");

				if (usercheck == null) {
					dao.register(userName, password, repassword, email, phoneNumber, name, address);
					response.sendRedirect("login.jsp");
				} else {
					response.sendRedirect("register.jsp");
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
