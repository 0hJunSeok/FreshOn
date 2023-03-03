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




public class ProductAdminDeleteController implements Controller {
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			int pcode = Integer.parseInt(request.getParameter("pcode"));
			ProductDao dao = ProductDao.getInstance();
			dao.delete(pcode);

			response.sendRedirect("list");
	}
}

		



	
	
