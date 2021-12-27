package dao;

import java.util.List;

import model.Menu_info;


public interface MenuDao {

	List<Menu_info> getMenus();
	Integer getMenuCount();
	Menu_info getMenu(String menu_id);
}
