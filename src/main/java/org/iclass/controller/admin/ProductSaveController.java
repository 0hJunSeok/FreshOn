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

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProductSaveController implements Controller {
		
		private static final Logger logger = LoggerFactory.getLogger(ProductSaveController.class);
		@Override
		public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//상품 등록 저장
			
			//서버에 전송될 위치(파일시스템 경로)
			String path = "#";
			
			//업로드 가능한 최대 크기(바이트)
			int maxSize = 10*1024*1024;		//1024바이트=1KB, 10MByte로 설정
			
			//request 를 파일을 받을 수 있는 request로 사용해야 합니다. : cos 라이브러리 추가
			MultipartRequest multiRequest = new MultipartRequest(request, 
					path,
					maxSize,
					"UTF-8",
					new DefaultFileRenamePolicy());		
			//DefaultFileRenamePolicy는 중복된 파일명에 대해 새로파일명 부여하는 규칙(파일명뒤에 일련번호)
			
			//기존 방식처럼 text 타입 등 파라미터 받아오기
			String category = multiRequest.getParameter("category");
			String subcategory = multiRequest.getParameter("subcategory");
			String name = multiRequest.getParameter("name");
			int price = Integer.parseInt(multiRequest.getParameter("price"));
			String content = multiRequest.getParameter("content");
			
			//서버로 업로드된 파일의 파일명
			String image = multiRequest.getFilesystemName("image");
			//서버의 파일 시스템 D:\\iclass1020\\FreshOn 경로에서 파일이 생겼는지 확인하기
			
			//dao의 insert 실행하세요.
			ProductDao dao = ProductDao.getInstance();
			String url=null;
			 Product Product = new Product(0,category,subcategory,name,price,content,image);
			 if(dao.insert(Product)==1) 
			 { url="list"; }
			 else 
			 { url="product"; }
			 		
			 		
			 
		//저장 완료후 상품 리스트로 돌아가기 	
			response.sendRedirect(url);
			}
}


