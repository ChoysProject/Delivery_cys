package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;

@Controller
public class IdcheckController {

	@Autowired
	private LoginDao loginDao;
	
	@RequestMapping(value="/idcheck/idcheck.html",method=RequestMethod.GET)
	public ModelAndView idcheck(String ID) {
		ModelAndView mav = new ModelAndView("main/idCheck");
		Integer cnt = loginDao.getIdCount(ID);
		if(cnt > 0) {
			mav.addObject("DUP","YES");
		}else {
			mav.addObject("DUP","NO");
		}
		mav.addObject("ID",ID);
		return mav;
	}
}
