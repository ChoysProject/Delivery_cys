package dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.CartDao;
import model.Cart;
import model.Mybasket_info;

@Repository
public class CartDaoImpl implements CartDao {
	@Autowired
	private SqlSession session;
	public void insertCart(Mybasket_info mybakset_info) {
		session.insert(
			"mapper.Cartmapper.insertCart",mybakset_info);
	}
	public void deleteCart(Mybasket_info mybakset_info) {
		session.delete(
			"mapper.Cartmapper.deleteCart",mybakset_info);
	}
	public void updateCart(Mybasket_info mybakset_info) {
		session.update(
			"mapper.Cartmapper.updateCart",mybakset_info);
	}
	public Integer selectMaxCart() {
		return session.selectOne(
				"mapper.Cartmapper.selectMaxCart");
	}
	public List<Mybasket_info> selectCart(String id) {
		return session.selectList(
			"mapper.Cartmapper.selectCart",id);
	}
}





