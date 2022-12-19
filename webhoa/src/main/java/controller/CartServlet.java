package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Cart;
import model.Product;
import model.ProductItem;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String action = request.getParameter("action");

		if (action == null) {
			action = "cart";
		}

		String url = "/ProductServlet";
		if (action.equals("shop")) {
			url = "/ProductServlet";
		} else if (action.equals("cart")) {
			String productCode = request.getParameter("productCode");
			String quan = request.getParameter("quantity");

			HttpSession session = request.getSession();
			Cart cart = (Cart) session.getAttribute("cart");
			if (cart == null) {
				cart = new Cart();
			}
			
			int quantity;
			try {
				quantity = Integer.parseInt(quan);
				if (quantity < 0) {
					quantity = 1;
				}
			} catch (NumberFormatException e) {
				quantity = 1;
			}

			Dao dao = new Dao();
			
			try {	
			Product product = dao.getProductById(productCode);
			ProductItem productItem = new ProductItem();
			productItem.setProduct(product);
			productItem.setQuantity(quantity);
			if (quantity > 0) {
				cart.addItem(productItem);
			} else if (quantity == 0) {
				cart.removeItem(productItem);
			}
			} catch(Exception e) {
				e.printStackTrace();
			}

			session.setAttribute("cart", cart);
			url = "/cart.jsp";
		} else if (action.equals("checkout")) {
			url = "/checkout.jsp";
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
