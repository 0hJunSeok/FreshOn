package org.iclass.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;
import org.iclass.dao.CartDao;
import org.iclass.dao.OrdersDao;
import org.iclass.vo.Cart;
import org.iclass.vo.Orders;

public class OrdersController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String[] pcodes = request.getParameterValues("pcode");
		String[] prices = request.getParameterValues("price");
		String[] ccodes = request.getParameterValues("ccode");
		String[] quants = request.getParameterValues("quant");
		String id = "ojs"; // 나중에 id 값 수정
		OrdersDao dao = OrdersDao.getInstance();
		CartDao dao2 = CartDao.getInstance();
		int result=0;
		if(ccodes == null) {
			int pcode = Integer.parseInt(pcodes[0]);
			int quantity = Integer.parseInt(quants[0]);
			int price = Integer.parseInt(prices[0]);
			Cart vo = Cart.builder()
					.id(id)
					.pcode(pcode)
					.quantity(quantity)
					.totalprice(price*quantity)
					.build();
			result = dao2.insert(vo);
			ccodes= new String[1];
			ccodes[0] = String.valueOf(result);
		}
		for(int i=0;i<pcodes.length;i++) {
			int pcode = Integer.parseInt(pcodes[i]);
			int quantity = Integer.parseInt(quants[i]);
			int price = Integer.parseInt(prices[i]);
			int ccode = Integer.parseInt(ccodes[i]);
			Orders vo = Orders.builder()
					.id(id)
					.pcode(pcode)
					.quantity(quantity)
					.totalprice(price*quantity)
					.ccode(ccode)
					.build();
			result = dao.insert(vo);
		}
		if (result != 0) {
			response.sendRedirect("list");
		} else {
			response.sendRedirect("orders");
		}

	}

}
