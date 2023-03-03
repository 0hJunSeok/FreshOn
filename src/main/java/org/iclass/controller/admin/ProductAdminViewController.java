package org.iclass.controller.admin;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;
import org.iclass.dao.ProductDao;
import org.iclass.vo.Product;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ProductAdminViewController implements Controller {
	private static final Logger logger = LoggerFactory.getLogger(ProductAdminViewController.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String temp = request.getParameter("pcode");
		int pcode = 0;
		try {
			pcode = Integer.parseInt(temp);
			
			
			ProductDao dao = ProductDao.getInstance();
			Product vo = dao.selectByPcode(pcode);
			if(vo==null) throw new RuntimeException();
			logger.debug("::::::: pro-{}:::::::",vo);
			request.setAttribute("pro", vo);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("admindetail.jsp");
			dispatcher.forward(request, response);
			
		}catch (NumberFormatException  e) {
			response.sendRedirect("list");
		}
		
	}

}
