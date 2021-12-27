package dao;

import java.util.List;

import model.Mybasket_info;


public interface CartDao {
	void insertCart(Mybasket_info mybasket_info);
	void deleteCart(Mybasket_info mybasket_info);
	void updateCart(Mybasket_info mybasket_info);
	Integer selectMaxCart();
	List<Mybasket_info> selectCart(String id);
	
}









