package org.iclass.controller.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;
import org.iclass.dao.ProductDao;
import org.iclass.vo.Product;

public class ProductAdminListController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String category = request.getParameter("category");
		Map<String,String> map=null;
		if(category != null) {
			map = new HashMap<>();
			map.put("category",category);
		}
		ProductDao dao = ProductDao.getInstance();
		List<Product> products= dao.list(map);
		

		request.setAttribute("products", products);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminlist.jsp");
		dispatcher.forward(request, response);
	}

}
