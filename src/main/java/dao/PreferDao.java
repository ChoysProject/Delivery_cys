package dao;

import java.util.List;

import model.Prefer_info;

public interface PreferDao {

	
	void createPrefer(Prefer_info prefer_info);
	Prefer_info getAll(String prefer_id);
	List<Prefer_info> selectPrefer();
	void deletePrefer(String prefer_picture);
	Integer selectMaxPrefer();
}
