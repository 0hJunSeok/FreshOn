package org.iclass.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.iclass.controller.Controller;
import org.iclass.dao.CartDao;
import org.iclass.vo.Users;

public class DeleteCartController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartDao dao = CartDao.getInstance();
		int ccode = Integer.parseInt(request.getParameter("ccode"));   
		
		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("users");
//		if(users==null ) throw new RuntimeException(); 로그인후에 다시
		
		int result = dao.delete(ccode);
		if(result == 1) {
			response.sendRedirect("cart"); 
		}else {
			response.sendRedirect("cart"); 
		}
		
	}
}
