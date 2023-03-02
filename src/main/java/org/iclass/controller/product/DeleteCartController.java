package org.iclass.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.iclass.controller.Controller;
import org.iclass.dao.CartDao;
import org.iclass.vo.User;

public class DeleteCartController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartDao dao = CartDao.getInstance();
		int ccode = Integer.parseInt(request.getParameter("ccode"));   
		
		HttpSession session = request.getSession();
		User users = (User) session.getAttribute("user");
//		if(users==null ) throw new RuntimeException();
		
		int result = dao.delete(ccode);
		if(result == 1) {
			response.sendRedirect("cart"); 
		}else {
			response.sendRedirect("cart"); 
		}
		
	}
}
