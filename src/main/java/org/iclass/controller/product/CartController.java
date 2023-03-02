package org.iclass.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.iclass.controller.Controller;
import org.iclass.dao.CartDao;
import org.iclass.vo.Cart;
import org.iclass.vo.User;

public class CartController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();  
		User users = (User) session.getAttribute("user");
		String id = users.getId();
		
		int pcode = Integer.parseInt(request.getParameter("pcode"));
		int price = Integer.parseInt(request.getParameter("price"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));

		Cart vo = Cart.builder()
				.id(id)
				.pcode(pcode)
				.quantity(quantity)
				.totalprice(quantity*price)
				.build();
		CartDao dao = CartDao.getInstance();
		int result = dao.insert(vo);
		if (result != 0) {
			response.sendRedirect("list");
		} else {
			response.sendRedirect("list");
		}

	}

}
