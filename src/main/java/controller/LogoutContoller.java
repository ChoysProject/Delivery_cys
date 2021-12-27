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
public class LogoutContoller {

	@Autowired
	private LoginDao logindao;
	
	
	@RequestMapping(value="/logout/mypage_logout.html",method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		String user_id = (String)session.getAttribute("loginUser");
		User_info user = logindao.getAll(user_id);
		session.setAttribute("user_id", user.getUser_id());
		session.removeAttribute("loginUser");
		//session.removeAttribute("CART");
		ModelAndView mav = new ModelAndView("main/logoutResult");
		mav.addObject("user",user);
		return mav;
	}
	
}
