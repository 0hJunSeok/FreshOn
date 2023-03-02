package org.iclass.controller.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;
import org.iclass.dao.ReviewDao;
import org.iclass.vo.Review;

public class ReviewSaveController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
		
		int pcode = Integer.parseInt(request.getParameter("pcode"));
		int ocode = Integer.parseInt(request.getParameter("ocode"));
		String grade=request.getParameter("grade");
		String review=request.getParameter("review");
		String ip = request.getRemoteAddr();
		
		Review vo = Review.builder()
				.pcode(pcode)
				.ocode(ocode)
				.grade(grade)
				.review(review)
				.ip(ip)
				.build();
		
		ReviewDao dao = ReviewDao.getInstance();
		long result = dao.insert(vo);
		if(result!=0) {
			response.sendRedirect("list");
		}else {
			//메인화면으로 이동
			response.sendRedirect(request.getContextPath());
		}
			
	}

}