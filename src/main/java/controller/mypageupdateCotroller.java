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
public class mypageupdateCotroller {

	@Autowired
	private LoginDao logindao;
	
	
	@RequestMapping(value="/mypageupdate/delete.html",method=RequestMethod.GET)
	public ModelAndView delete(HttpSession session) {
		ModelAndView mav = new ModelAndView("main/userdeleteResult");
		String user_id = (String)session.getAttribute("loginUser");
		logindao.deleteUser(user_id);
		return mav;
	}
	
	@RequestMapping(value="/mypageupdate/update.html",method=RequestMethod.POST)
	public ModelAndView update(HttpSession session,User_info user) {
		ModelAndView mav = new ModelAndView("main/userupdateResult");
		String user_id = (String)session.getAttribute("loginUser");
		user.setUser_id(user_id);
		
		logindao.updateUser(user);
		return mav;
	}
	
}
