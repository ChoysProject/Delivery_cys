package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import model.User_info;

@Controller
public class EntryController {

	@Autowired
	private LoginDao loginDao;
	
	@RequestMapping(value="/entry/userentry.html",method=RequestMethod.POST)
	public ModelAndView entry(User_info user, HttpSession session) {
		loginDao.entryUser(user);
		ModelAndView mav = new ModelAndView("main/loginResult");
		session.setAttribute("loginUser", user.getUser_id());
		mav.addObject("loginResult.jsp");
		return mav;
	}
	
}
