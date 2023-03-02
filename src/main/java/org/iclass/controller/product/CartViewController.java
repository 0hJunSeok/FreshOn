package org.iclass.controller.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.iclass.controller.Controller;
import org.iclass.dao.CartDao;
import org.iclass.vo.Cart;
import org.iclass.vo.User;

public class CartViewController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartDao dao = CartDao.getInstance();
		
		HttpSession session = request.getSession();  
		User users = (User) session.getAttribute("user");
		String id = users.getId();
		
		List<Cart> carts = dao.list(id);
		
		request.setAttribute("carts", carts);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cart.jsp");
		dispatcher.forward(request, response);
	}

}
