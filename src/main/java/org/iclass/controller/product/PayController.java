package org.iclass.controller.product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.iclass.controller.Controller;
import org.iclass.dao.ProductDao;
import org.iclass.vo.Product;
import org.iclass.vo.User;

public class PayController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();  
		User users = (User) session.getAttribute("user");
		String id = users.getId();
		
		String[] pcodes = request.getParameterValues("pcode");
//		String[] prices = request.getParameterValues("price");
		String[] ccodes = request.getParameterValues("ccode");
		String[] quants = request.getParameterValues("quant");
		ProductDao dao = ProductDao.getInstance();
	
		List<Product> paylist = new ArrayList<>();
		for(String p : pcodes) {
			paylist.add(dao.selectByPcode(Integer.parseInt(p)));
		}
		
		session.setAttribute("paylist", paylist);  
		session.setAttribute("ccodes", ccodes);		//개ㅛ으로 가져가서 카트테이블 삭제
		session.setAttribute("quants", quants);		
		
		response.sendRedirect("pay");
	
	}

}
