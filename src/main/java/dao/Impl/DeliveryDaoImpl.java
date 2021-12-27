package dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.DeliveryDao;
import model.Delivery_info;

@Repository
public class DeliveryDaoImpl implements DeliveryDao {
	
	@Autowired
	private SqlSession session;
	
	
	public void createDelivery(Delivery_info delivery_info) {
		
		session.insert("mapper.Deliverymapper.createDelivery",delivery_info);
	}

	public Delivery_info getAll(String delivery_id) {

		return session.selectOne("mapper.Deliverymapper.getAll",delivery_id);
	}

	public List<Delivery_info> selectDelivery() {
		
		return session.selectList("mapper.Deliverymapper.selectDelivery");
	}

	public Integer selectMaxDelivery() {
		return session.selectOne("mapper.Deliverymapper.selectMaxDelivery");
	}

	public void updateState(Delivery_info delivery_info) {
		session.update("mapper.Deliverymapper.updateState",delivery_info);
		
	}

	public void deleteDelivery(String delivery_number) {
		session.delete("mapper.Deliverymapper.deleteDelivery",delivery_number);
		
	}

	
	
	
	
	
}
