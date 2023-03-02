package org.iclass.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.iclass.vo.Review;

import mybatis.SqlSessionBean;

public class ReviewDao {
	private static ReviewDao dao = new ReviewDao();

	private ReviewDao() {
	}

	public static ReviewDao getInstance() {
		return dao;
	}

	public int insert(Review vo) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		mapperSession.insert("review.insert", vo);
		mapperSession.commit();
		mapperSession.close();
		return vo.getRcode();
	}

	public int update(Review vo) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result = mapperSession.update("review.update", vo);
		mapperSession.commit();
		mapperSession.close();
		return result;
	}

	public int delete(int rcode) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result = mapperSession.delete("review.delete", rcode);
		mapperSession.commit();
		mapperSession.close();
		return result;
	}

	public List<Review> selectByPcode(int pcode) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		List<Review> rlist = mapperSession.selectList("review.selectByPcode", pcode);
		mapperSession.close();
		return rlist;
	}
}
