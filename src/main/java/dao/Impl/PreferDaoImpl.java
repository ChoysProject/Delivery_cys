package dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.PreferDao;
import model.Prefer_info;

@Repository
public class PreferDaoImpl implements PreferDao {

	@Autowired
	private SqlSession session;
	
	
	public void createPrefer(Prefer_info prefer_info) {
		
		session.insert("mapper.PreferMapper.createPrefer",prefer_info);

	}

	public Prefer_info getAll(String prefer_id) {
		
		return session.selectOne("mapper.PreferMapper.getAll",prefer_id);
	}

	public List<Prefer_info> selectPrefer() {
		return session.selectList("mapper.PreferMapper.selectPrefer");
	}

	public void deletePrefer(String prefer_picture) {
		session.delete("mapper.PreferMapper.deletePrefer",prefer_picture);

	}

	public Integer selectMaxPrefer() {
		return session.selectOne("mapper.PreferMapper.selectMaxPrefer");
	}

	
}
