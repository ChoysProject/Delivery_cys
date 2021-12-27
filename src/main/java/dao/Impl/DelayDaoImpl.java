package dao.Impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.DelayDao;
import model.Delay_info;

@Repository
public class DelayDaoImpl implements DelayDao {

	@Autowired
	private SqlSession session;
	
	public void updateDelay(String delay) {
		
		session.update("mapper.Managermapper.updateDelay",delay);
	}

	public Delay_info getdelay() {
		return session.selectOne("mapper.Managermapper.getdelay");
	}

}
