package dao.Impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.ManagerDao;
import model.Manager_info;

@Repository
public class ManagerDaoImpl implements ManagerDao {

	@Autowired
	private SqlSession session;
	
	public void creatState(Manager_info manager_info) {
		
		session.insert("mapper.Managermapper.creatState",manager_info);
	}

	public Manager_info getAll(String manager_number) {
		return session.selectOne("mapper.Managermapper.getAll",manager_number);
	}

	public void deleteState(String manager_number) {
		session.delete("mapper.Managermapper.delete",manager_number);

	}

	public void updateState(Manager_info manager_info) {
		session.update("mapper.Managermapper.updateState",manager_info);
		
	}
	

}
