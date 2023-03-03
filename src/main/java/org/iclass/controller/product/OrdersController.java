package org.iclass.controller.product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.bytecode.Opcode;
import org.iclass.controller.Controller;
import org.iclass.dao.CartDao;
import org.iclass.dao.OrdersDao;
import org.iclass.vo.Cart;
import org.iclass.vo.Orders;
import org.iclass.vo.Product;
import org.iclass.vo.User;

public class OrdersController implements Controller {
//주문완
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		User users = (User) session.getAttribute("user");
		String id = users.getId();
		//애트리뷰트 가져오기
		List<Product> products = (List<Product>)session.getAttribute("paylist");
		String[] ccodes = (String[])session.getAttribute("ccodes");
		String[] quants = (String[])session.getAttribute("quants");

		OrdersDao dao = OrdersDao.getInstance();
		CartDao dao2 = CartDao.getInstance();
		//orderDao 테이블추가
		for(int i=0; i<products.size();i++) {
		int pcode = products.get(i).getPcode();
		int price = products.get(i).getPrice();
		int quantity = Integer.parseInt(quants[i]);
		int ccode = Integer.parseInt(ccodes[i]);
		Orders vo = Orders.builder()
					.id(id)
					.pcode(pcode)
					.quantity(quantity)
					.totalprice(price * quantity)
					.ccode(ccode)
					.build();
		dao.insert(vo);
		}
		//cartDao 데이터 삭제
		for(String c : ccodes)
			dao2.delete(Integer.parseInt(c));
		//애트리뷰트 삭제
		session.removeAttribute("paylist");
		session.removeAttribute("ccodes");
		session.removeAttribute("quants");

	

			response.sendRedirect("orders");


	}

}
