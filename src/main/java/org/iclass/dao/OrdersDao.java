package org.iclass.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.iclass.vo.Orders;

import mybatis.SqlSessionBean;

public class OrdersDao {
	private static OrdersDao dao = new OrdersDao();
	private OrdersDao() {}
	public static OrdersDao getInstance() {
		return dao;
	}
	
	public int insert(Orders vo) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		mapperSession.insert("orders.insert",vo);
		mapperSession.commit();
		mapperSession.close();
		return vo.getOcode();		
	}
	
	public List<Orders> list(String id) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		List<Orders> list = mapperSession.selectList("orders.selectlist", id);
		mapperSession.close();
		return list;
	}
	
	public int delete(String id) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result = mapperSession.delete("orders.delete",id);
		mapperSession.commit();
		mapperSession.close();
		return result;
	}
}
