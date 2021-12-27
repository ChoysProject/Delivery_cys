package dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.MenuDao;
import model.Menu_info;

@Repository
public class MenuDaoImpl implements MenuDao {

	@Autowired
	private SqlSession session;
	
	public Menu_info getMenu(String menu_id) {
		
		return session.selectOne("mapper.Menumapper.getMenu",menu_id);
	}

	public List<Menu_info> getMenus() {
		return session.selectList("mapper.Menumapper.getMenuList");
	}

	public Integer getMenuCount() {
		return session.selectOne("mapper.Menumapper.getMenuCount");
	}

}
