package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.DelayDao;
import dao.DeliveryDao;
import dao.LoginDao;
import dao.ManagerDao;
import model.Delay_info;
import model.Delivery_info;
import model.Manager_info;

@Controller
public class managerController {

	@Autowired
	private LoginDao logindao;
	
	@Autowired
	private DelayDao delaydao;
	@Autowired
	private ManagerDao managerdao;
	@Autowired
	private DeliveryDao deliverydao;
	
	@RequestMapping(value="/manager/manager.html", method=RequestMethod.GET)
	public ModelAndView manager(String delay, Delivery_info delivery_info,Manager_info manager_info, HttpSession session,String STATE,
				String NO, String ID) {

		System.out.println("NO:["+NO+"]");
		System.out.println("ID:["+ID+"]");
		System.out.println("state:["+STATE+"]");
		
		if(delay != null) {
			delaydao.updateDelay(delay);
		}
		
		
		if(STATE != null) {
			delivery_info.setDelivery_state(STATE);
			System.out.println("STATE1"+STATE);
			delivery_info.setDelivery_number(NO);
			deliverydao.updateState(delivery_info);
			if(STATE.equals("departure")) {
				deliverydao.deleteDelivery(NO);
			}
		}
		
		ModelAndView mav = new ModelAndView("main/managerpage");
		Delay_info a = delaydao.getdelay();
		mav.addObject("delay",a.getDelay());

		List<Delivery_info> delivery_list = deliverydao.selectDelivery();
		mav.addObject("DELIVERYLIST",delivery_list);
		mav.addObject("BODY","Delivery_list.jsp");
		
		return mav;
	}
	
	
	
	@RequestMapping(value="/manager/map.html")
	public ModelAndView map(String address,String no, HttpSession session) {
		
		ModelAndView mav = new ModelAndView("main/map");
		
//		Delivery_info delivery_info = deliverydao.getAll(no);
		

		
		
		System.out.println("주소 : ["+address+"]");
		System.out.println("주소 : ["+no+"]");
		mav.addObject("address",address);
		return mav;
	}
	
	
	
	
	
}
