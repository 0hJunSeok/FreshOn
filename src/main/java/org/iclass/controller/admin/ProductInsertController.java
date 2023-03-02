package org.iclass.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;

public class ProductInsertController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 상품 등록 화면을 보여주기 . 화면은 goods.jsp
				RequestDispatcher dispatcher = request.getRequestDispatcher("goods.jsp");
				dispatcher.forward(request, response);

	}

}
