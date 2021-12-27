package dao;


import model.User_info;


public interface LoginDao {

	void entryUser(User_info user);
	User_info getUser(String user_id);
	String getPassword(String user_id);
	Integer getIdCount(String user_id);
	User_info getAll(String user_id);
	void deleteUser(String user_id);
	void updateUser(User_info user);
}
