package controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import model.User_info;


@Controller
public class LoginMainController {

	@Autowired
	private LoginDao loginDao;
	
	
	@RequestMapping(value="/login/connect.html",method=RequestMethod.POST)
	public ModelAndView connect(@Valid User_info user, HttpSession session) {
		String password = loginDao.getPassword(user.getUser_id());
		ModelAndView mav = new ModelAndView();
		
		
		if(password == null || !user.getUser_password().equals(password)) {
			
			return new ModelAndView("redirect:/login/mainLogin.html");
		}else{//로그인 성공
			session.setAttribute("loginUser", user.getUser_id());
			
			String user_id = (String)session.getAttribute("loginUser");
			System.out.println(user_id);
			user = loginDao.getAll(user_id);
			String kind = user.getUser_kind();
			System.out.println(kind);
			
			if(kind.equals("m")) {
				System.out.println("관리자");
				return new ModelAndView("redirect:/manager/manager.html");
			}else {
				System.out.println("소비자");
				return new ModelAndView("redirect:/costomer/costomer.html");
			}
		}
			
		}
		
	
	
	
	
	@RequestMapping(value="/login/userentry.html", method=RequestMethod.GET)
	public ModelAndView userentry() {//화면 창만 띄움
		
		ModelAndView mav = new ModelAndView("main/userentry");
		mav.addObject("user",new User_info());
		return mav;
	}
	
	@RequestMapping(value="/login/mainLogin.html",method=RequestMethod.GET)
	public ModelAndView mainLogin() {
		
		ModelAndView mav = new ModelAndView("main/mainLogin");
		mav.addObject("user",new User_info());
		return mav;
	}
	
}
