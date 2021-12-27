package controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import dao.MenuDao;
import dao.MybasketDao;

import model.Menu_info;
import model.Mybasket_info;

@Controller
public class MenuController {

	@Autowired
	private LoginDao logindao;
	
	@Autowired
	private MenuDao menudao;
	
	@Autowired
	private MybasketDao mybasketdao;

	
	@RequestMapping(value="/menu/select.html", method=RequestMethod.GET)
	public ModelAndView select (HttpServletRequest request, Mybasket_info mybasket, HttpSession session,String CODE) {
		ModelAndView mav = new ModelAndView("main/select");
		String user_id = (String)session.getAttribute("loginUser"); 
		Menu_info menuList = menudao.getMenu(CODE);
		mav.addObject("MENU_LIST",menuList);
		mav.addObject("user_id",user_id);
		return mav;
		
	}
}

