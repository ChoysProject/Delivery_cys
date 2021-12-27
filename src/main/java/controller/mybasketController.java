package controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import dao.MenuDao;
import dao.MybasketDao;
import model.Mybasket_info;

@Controller
public class mybasketController {

	@Autowired
	private LoginDao logindao;
	
	@Autowired
	private MybasketDao mybasketdao;
	
	@Autowired
	private MenuDao menudao;
	
	@RequestMapping(value="/mybasket/mybasket.html",method=RequestMethod.GET)
	public ModelAndView mybasket(HttpSession session) {
		ModelAndView mav = new ModelAndView("main/mybasketpage");

		return mav;
	}
	

}
