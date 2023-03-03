package org.iclass.controller.review;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;
import org.iclass.dao.OrdersDao;
import org.iclass.vo.OrdersProduct;


public class ReviewController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ocode = Integer.parseInt(request.getParameter("ocode"));			
			
		OrdersDao dao = OrdersDao.getInstance();
		OrdersProduct order = dao.selectOne(ocode);
		request.setAttribute("order",order);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("write.jsp");
			dispatcher.forward(request, response);
	}

}