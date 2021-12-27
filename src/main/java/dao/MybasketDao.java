package dao;

import java.util.List;

import model.Mybasket_info;


public interface MybasketDao {

	void insert(Mybasket_info mybasket);
	void delete(Mybasket_info mybasket);
	Integer selectMaxMybasket();
	List<Mybasket_info> selectMybasket(String mybasket_id);
}
