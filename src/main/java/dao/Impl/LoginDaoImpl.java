package dao.Impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.LoginDao;
import model.User_info;

@Repository
public class LoginDaoImpl implements LoginDao {

	@Autowired
	private SqlSession session;
	
	
	public void updateUser(User_info user) {
		session.update("mapper.Usermapper.update",user);
		
	}

	public void deleteUser(String user_id) {
		session.delete("mapper.Usermapper.delete",user_id);
		
	}
	
	public void entryUser(User_info user) {
		
		session.insert("mapper.Usermapper.createUser",user);

	}

	public User_info getUser(String user_id) {
		
		return null;
	}

	public String getPassword(String user_id) {
		
		return session.selectOne("mapper.Usermapper.getPassword",user_id);
	}

	public Integer getIdCount(String user_id) {
		
		return session.selectOne("mapper.Usermapper.getIdCount",user_id);
	}

	public User_info getAll(String user_id) {
		
		return session.selectOne("mapper.Usermapper.getAll",user_id);
	}



}
