package dao;

import model.Manager_info;

public interface ManagerDao {

	void creatState(Manager_info manager_info);
	
	Manager_info getAll(String manager_number);
	
	void deleteState(String manager_number);
	
	void updateState(Manager_info manager_info);
}
