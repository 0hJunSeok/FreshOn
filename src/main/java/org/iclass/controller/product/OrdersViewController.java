package org.iclass.controller.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;
import org.iclass.dao.OrdersDao;
import org.iclass.vo.Orders;

public class OrdersViewController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrdersDao dao = OrdersDao.getInstance();
		List<Orders> orders = dao.list("ojs");
		
		request.setAttribute("orders", orders);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("orders.jsp");
		dispatcher.forward(request, response);
	}

}
