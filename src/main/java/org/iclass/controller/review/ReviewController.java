package org.iclass.controller.review;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;
import org.iclass.dao.ProductDao;
import org.iclass.vo.Product;

public class ReviewController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setAttribute("page",request.getParameter("page"));
			
			ProductDao productDao = ProductDao.getInstance();
			Product product = productDao.selectByPcode(Integer.parseInt(request.getParameter("pcode")));
			
			
			
			request.setAttribute("pcode", product.getPcode());
			request.setAttribute("category", product.getCategory());
			request.setAttribute("subcategory", product.getSubcategory());
			request.setAttribute("name", product.getName());
			request.setAttribute("price", product.getPrice());
			request.setAttribute("content", product.getContent());
			request.setAttribute("image", product.getImage());
			
			request.setAttribute("ocode",request.getParameter("ocode"));
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("write.jsp");
			dispatcher.forward(request, response);
	}

}