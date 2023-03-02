package org.iclass.controller.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;
import org.iclass.dao.ProductDao;
import org.iclass.dao.ReviewDao;
import org.iclass.vo.Product;
import org.iclass.vo.Review;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ProductViewController implements Controller {
	private static final Logger logger = LoggerFactory.getLogger(ProductViewController.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			int pcode = Integer.parseInt(request.getParameter("pcode"));
			ProductDao dao = ProductDao.getInstance();
			Product vo = dao.selectByPcode(pcode);
			if (vo == null) {
				throw new RuntimeException();
			}
			request.setAttribute("pro", vo);

			ReviewDao dao2 = ReviewDao.getInstance();

			List<Review> rlist = dao2.selectByPcode(pcode);
			request.setAttribute("rlist", rlist);

			RequestDispatcher dispatcher = request.getRequestDispatcher("detail.jsp");
			dispatcher.forward(request, response);

		} catch (NumberFormatException e) {
			response.sendRedirect("list");
		}

	}

}
