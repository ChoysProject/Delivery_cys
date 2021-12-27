package dao;

import java.util.List;


import model.Delivery_info;

public interface DeliveryDao {

	
	void createDelivery(Delivery_info delivery_info);
	Delivery_info getAll(String delivery_id);
	List<Delivery_info> selectDelivery();
	Integer selectMaxDelivery();
	void updateState(Delivery_info delivery_info);
	void deleteDelivery(String delivery_number);
}
