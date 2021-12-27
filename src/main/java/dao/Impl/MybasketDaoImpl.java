package dao.Impl;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.MybasketDao;
import model.Mybasket_info;
@Repository
public class MybasketDaoImpl implements MybasketDao {

	@Autowired
	private SqlSession session;
	
	public void insert(Mybasket_info mybasket) {
		
		session.insert("mapper.Mybasketmapper.insertmybasket");
	}

	public void delete(Mybasket_info mybasket) {
		session.delete("mapper.Mybasketmapper.deletemybasket");
		
	}

	public Integer selectMaxMybasket() {
		
		return session.selectOne("mapper.Mybasketmapper.selectMaxMybasket");
	}

	public List<Mybasket_info> selectMybasket(String mybasket_id) {
		
		return session.selectList("mapper.Mybasketmapper.selectmybasket",mybasket_id);
	}

}
