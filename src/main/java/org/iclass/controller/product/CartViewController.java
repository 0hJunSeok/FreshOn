package org.iclass.controller.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;
import org.iclass.dao.CartDao;
import org.iclass.vo.Cart;

public class CartViewController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartDao dao = CartDao.getInstance();
		List<Cart> carts = dao.list("ojs");	//나중에 로그인 사용자 id 값 수정
		
		request.setAttribute("carts", carts);		//세션애트리뷰트 저장으로 변경
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cart.jsp");
		dispatcher.forward(request, response);
	}

}
