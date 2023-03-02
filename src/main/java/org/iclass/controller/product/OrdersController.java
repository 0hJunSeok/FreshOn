package org.iclass.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.iclass.controller.Controller;
import org.iclass.dao.CartDao;
import org.iclass.dao.OrdersDao;
import org.iclass.vo.Cart;
import org.iclass.vo.Orders;
import org.iclass.vo.User;

//public class OrdersController implements Controller {
////주문완
//	@Override
//	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		
//		HttpSession session = request.getSession();  
//		User users = (User) session.getAttribute("user");
//		String id = users.getId();
//		
//		OrdersDao dao = OrdersDao.getInstance();
//		CartDao dao2 = CartDao.getInstance();
//		int result=0;
//		
//			int pcode = Integer.parseInt(pcodes);
//			int quantity = Integer.parseInt(quants);
//			int price = Integer.parseInt(prices);
//			int ccode = Integer.parseInt(ccodes);
//			Orders vo = Orders.builder()
//					.id(id)
//					.pcode(pcode)
//					.quantity(quantity)
//					.totalprice(price*quantity)
//					.ccode(ccode)
//					.build();
//			result = dao.insert(vo);
//		}
//		if (result != 0) {
//			response.sendRedirect("list");
//		} else {
//			response.sendRedirect("orders");
//		}
//
//	}
//
//}
