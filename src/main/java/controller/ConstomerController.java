package controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.DelayDao;
import dao.DeliveryDao;
import dao.LoginDao;
import dao.MenuDao;
import dao.PreferDao;
import model.Delay_info;
import model.Delivery_info;
import model.Menu_info;
import model.Prefer_info;
import model.User_info;

@Controller
public class ConstomerController {

	@Autowired
	private LoginDao loginDao;
	@Autowired
	private MenuDao menudao;
	@Autowired
	private DelayDao delaydao;
	@Autowired
	private DeliveryDao deliverydao;
	@Autowired
	private PreferDao preferdao;
	@Autowired
	private Prefer_info prefer_info;
	
	@RequestMapping(value="/costomer/costomer.html", method=RequestMethod.GET)
	public ModelAndView costomer(@Valid User_info user, HttpSession session) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		return mav;
	}
	
	@RequestMapping(value="/costomer/menu1.html",method=RequestMethod.GET)
	public ModelAndView menu1(String BODY) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		mav.addObject("BODY",BODY);
		return mav;
	}
	
	
	@RequestMapping(value="/costomer/menu2.html",method=RequestMethod.GET)
	public ModelAndView menu2(HttpSession session,String BODY,Integer pageNo) {
		
		
		
		
		ModelAndView mav = new ModelAndView("main/costomerpage");
		List<Menu_info> menuList = menudao.getMenus();
		String user_id = (String)session.getAttribute("loginUser");

		Delay_info a = delaydao.getdelay();
		User_info user = loginDao.getAll(user_id);
		
		mav.addObject("user_name",user.getUser_name());
		mav.addObject("user_address",user.getUser_address());
		mav.addObject("MENU_LIST",menuList);

		
		mav.addObject("BODY",BODY);
		
		
		mav.addObject("delay",a.getDelay());
		
		return mav;
	}
	
	
	
	@RequestMapping(value="/costomer/menu3.html",method=RequestMethod.GET)
	public ModelAndView menu3(String BODY) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		mav.addObject("BODY",BODY);
		return mav;
	}
	
	@RequestMapping(value="/costomer/information1.html",method=RequestMethod.GET)
	public ModelAndView infomation1(String BODY) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		mav.addObject("BODY",BODY);
		return mav;
	}
	
	@RequestMapping(value="/costomer/information2.html",method=RequestMethod.GET)
	public ModelAndView information2(String BODY) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		mav.addObject("BODY",BODY);
		return mav;
	}
	
	@RequestMapping(value="/costomer/information3.html",method=RequestMethod.GET)
	public ModelAndView information3(String BODY) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		mav.addObject("BODY",BODY);
		return mav;
	}
	@RequestMapping(value="/costomer/information4.html",method=RequestMethod.GET)
	public ModelAndView information4(String BODY) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		mav.addObject("BODY",BODY);
		return mav;
	}
	
	@RequestMapping(value="/costomer/mypage_menu1.html",method=RequestMethod.GET)
	public ModelAndView mypage_menu1(String BODY,HttpSession session) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		String user_id = (String)session.getAttribute("loginUser");
		Delivery_info delivery_info = deliverydao.getAll(user_id);
		
		if(delivery_info == null) {
			mav.addObject("BODY",BODY);
			return mav;
		}else {
			String number = delivery_info.getDelivery_number();
			String state = delivery_info.getDelivery_state();
			
			mav.addObject("number",number);
			mav.addObject("state",state);
			mav.addObject("BODY",BODY);
			return mav;
		}
		
	}
	
	@RequestMapping(value="/costomer/mypage_menu2.html",method=RequestMethod.GET)
	public ModelAndView mypage_menu2(String BODY) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		mav.addObject("BODY",BODY);
		return mav;
	}
	
	@RequestMapping(value="/costomer/mypage_menu3.html",method=RequestMethod.GET)
	public ModelAndView mypage_menu3(String BODY,String PICTURE,String PRICE,String CALORIE,HttpSession session) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		String id = (String) session.getAttribute("loginUser");
		List<Prefer_info>prefer_list = preferdao.selectPrefer();
		
		System.out.println("prefer_list : ?? 비어있나 ?"+prefer_list.size());
		mav.addObject("PREFERLIST",prefer_list);
		mav.addObject("BODY",BODY);
		return mav;
	}
	
	@RequestMapping(value="/costomer/mypage_menu4.html",method=RequestMethod.GET)
	public ModelAndView mypage_menu4(String BODY) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		mav.addObject("BODY",BODY);
		return mav;
	}
	
	@RequestMapping(value="/costomer/mypage_menu5.html",method=RequestMethod.GET)
	public ModelAndView mypage_menu5(String BODY,HttpSession session) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		mav.addObject("BODY",BODY);
		mav.addObject("user",new User_info());
		String user_id = (String)session.getAttribute("loginUser");
		User_info user = loginDao.getAll(user_id);
		mav.addObject("name",user.getUser_name());
		mav.addObject("phone",user.getUser_phone());
		mav.addObject("email",user.getUser_email());
		mav.addObject("address",user.getUser_address());
		
		
		return mav;
	}
	
	@RequestMapping(value="/costomer/co_menu_2.html",method=RequestMethod.GET)
	public ModelAndView co_menu_2(String BODY, HttpSession session) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		Delay_info a = delaydao.getdelay();
		
		String user_id = (String)session.getAttribute("loginUser");
		User_info user = loginDao.getAll(user_id);
		mav.addObject("BODY",BODY);
		mav.addObject("delay",a.getDelay());
		mav.addObject("user_name",user.getUser_name());
		mav.addObject("user_address",user.getUser_address());
		
		
		
		mav.addObject("BODY",BODY);
		return mav;
	}
	
	@RequestMapping(value="/costomer/co_menu_3.html",method=RequestMethod.GET)
	public ModelAndView co_menu_3(HttpSession session, String BODY) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		String user_id = (String)session.getAttribute("loginUser");
		User_info user = loginDao.getAll(user_id);
		Delay_info a = delaydao.getdelay();
		
		mav.addObject("user_name",user.getUser_name());
		mav.addObject("user_address",user.getUser_address());
		mav.addObject("delay",a.getDelay());
		mav.addObject("BODY",BODY);
		return mav;
	}
	
	@RequestMapping(value="/costomer/co_menu_4.html",method=RequestMethod.GET)
	public ModelAndView co_menu_4(HttpSession session, String BODY) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		String user_id = (String)session.getAttribute("loginUser");
		User_info user = loginDao.getAll(user_id);
		Delay_info a = delaydao.getdelay();
		mav.addObject("user_name",user.getUser_name());
		mav.addObject("delay",a.getDelay());
		mav.addObject("user_address",user.getUser_address());
		mav.addObject("BODY",BODY);
		return mav;
	}
	
	@RequestMapping(value="/costomer/co_menu_5.html", method=RequestMethod.GET)
	public ModelAndView co_menu_5(HttpSession session, String BODY) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		String user_id = (String)session.getAttribute("loginUser");
		Delay_info a = delaydao.getdelay();
		User_info user = loginDao.getAll(user_id);
		mav.addObject("user_name",user.getUser_name());
		mav.addObject("delay",a.getDelay());
		mav.addObject("user_address",user.getUser_address());
		mav.addObject("BODY",BODY);
		return mav;
		
	}
	
	}

