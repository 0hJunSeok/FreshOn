package org.iclass.controller;

import java.util.HashMap;
import java.util.Map;

import org.iclass.controller.product.CartController;
import org.iclass.controller.product.CartViewController;
import org.iclass.controller.product.DeleteCartController;
import org.iclass.controller.product.ListController;
import org.iclass.controller.product.OrdersController;
import org.iclass.controller.product.OrdersViewController;
import org.iclass.controller.product.PayController;
import org.iclass.controller.product.ProductViewController;

public class RequestControllerMapping {
	private static final Map<RequestKeyValue,Controller> mapping = new HashMap<>();
	
	public static void init() {
		mapping.put(new RequestKeyValue("/product/list","GET"), new ListController());			//상품목록
		mapping.put(new RequestKeyValue("/product/cart","GET"), new CartViewController());		//장바구니목록
		mapping.put(new RequestKeyValue("/product/cart","POST"), new CartController());			//장바구니정보
		mapping.put(new RequestKeyValue("/product/cartdel","GET"), new DeleteCartController());	//장바구니삭제
		mapping.put(new RequestKeyValue("/product/orders","GET"), new OrdersViewController());	//구매목록
		mapping.put(new RequestKeyValue("/product/orders","POST"), new OrdersController());		//구매정보
		mapping.put(new RequestKeyValue("/product/pay","POST"), new PayController());			//결제
		mapping.put(new RequestKeyValue("/product/detail","GET"), new ProductViewController());//상품
		
		
		
		
	}
	//url,method 필드를 저장하는 key 를 전달받아 HashMap에서 value(컨트롤러)를 리턴
	public static Controller getController(RequestKeyValue key) {
		return mapping.get(key);
	}
}

