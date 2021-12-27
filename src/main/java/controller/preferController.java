package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import dao.PreferDao;
import model.Prefer_info;

@Controller
public class preferController {

	@Autowired
	private LoginDao loginDao;
	@Autowired
	private Prefer_info prefer_info;
	@Autowired
	private PreferDao preferdao;
	
	@RequestMapping(value="/prefer/prefermenu.html",method=RequestMethod.GET)
	public ModelAndView prefer(String BODY, HttpSession session) {
		ModelAndView mav = new ModelAndView("main/prefer");
		
		mav.addObject("BODY",BODY);
		return mav;
	}
	
	
	@RequestMapping(value="/prefer/addPrefer.html",method=RequestMethod.GET)
	public ModelAndView addPrefer(String BODY,HttpSession session,String PICTURE,String PRICE,String CALORIE) {
		
		String id = (String)session.getAttribute("loginUser");
		
		System.out.println("장바구니???="+PICTURE);
		System.out.println("장바구니 가격???="+PRICE);
		System.out.println("장바구니 칼로리???="+CALORIE);
		Integer seqno = preferdao.selectMaxPrefer();
		
		if(seqno == null) seqno = 1;
		else seqno = seqno +1;
		
		prefer_info.setSeqno(seqno);
		prefer_info.setPrefer_id(id);
		prefer_info.setPrefer_picture(PICTURE);
		prefer_info.setPrefer_price(PRICE);
		prefer_info.setPrefer_calorie(CALORIE);
		
		preferdao.createPrefer(prefer_info);
		
		
		
		ModelAndView mav = new ModelAndView("main/addPreferResult");
				
		return mav;
		
	}
	
	@RequestMapping(value="/prefer/delete.html", method=RequestMethod.POST)
	public ModelAndView delete(String picture,String BTN,HttpSession session) {
		System.out.println("BTN==="+BTN);
		System.out.println("사진==="+picture);
		
		String id = (String)session.getAttribute("loginUser");
		
		if(BTN.equals("주문")) {
			
		}else if(BTN.equals("삭제")) {
			preferdao.deletePrefer(picture);
		}
		return new ModelAndView("redirect://../costomer/mypage_menu3.html?BODY=mypage_menu3.jsp");
	}
	
}
