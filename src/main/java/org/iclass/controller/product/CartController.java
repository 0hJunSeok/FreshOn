package org.iclass.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;
import org.iclass.dao.CartDao;
import org.iclass.vo.Cart;

public class CartController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String id = "ojs";	//나중에 id 값 수정
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
