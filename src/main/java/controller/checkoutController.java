package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.CartDao;
import dao.DeliveryDao;
import dao.LoginDao;
import dao.ManagerDao;
import dao.MenuDao;
import model.Cart;
import model.Delivery_info;
import model.Manager_info;
import model.Mybasket_info;
import model.User_info;

@Controller
public class checkoutController {

	
	@Autowired
	private LoginDao logindao;
	@Autowired
	private MenuDao menudao;
	@Autowired
	private Cart cart;
	@Autowired
	private CartDao cartDao;
	@Autowired
	private DeliveryDao deliverydao;
	@Autowired
	private ManagerDao managerdao;
	
	@RequestMapping(value="/checkout/checkout.html",method=RequestMethod.POST)
	public ModelAndView checkout(@Valid User_info user, HttpSession session) {
		ModelAndView mav = new ModelAndView("main/checkoutPage");
		
		String user_id = (String)session.getAttribute("loginUser");
		user = logindao.getAll(user_id);
		List<Mybasket_info> cartList = cart.getCart(user_id);
		String user_name = (String)user.getUser_name();
		String user_phone = (String)user.getUser_phone();
		String user_address =(String)user.getUser_address();
		mav.addObject("user_id",user_id);
		mav.addObject("user_name",user_name);
		mav.addObject("user_phone",user_phone);
		mav.addObject("user_address",user_address);
		int totalAmount = 0;
		
		Date today = new Date();
		
		SimpleDateFormat number = new SimpleDateFormat("yyyyMMddhhmmss");
		String delivery_number = number.format(today);
	
		

		
		mav.addObject("delivery_number",delivery_number);
		if(cartList.size() > 0) {
			Iterator it = cartList.iterator();
			while(it.hasNext()) {
				Mybasket_info mybasket_info = (Mybasket_info)it.next();
				int total = mybasket_info.getMybasket_price() * mybasket_info.getNum();
				totalAmount = totalAmount + total;
				mav.addObject("total",totalAmount);
			}
			mav.addObject("SIZE","YES");
		}else {
			mav.addObject("SIZE","NO");
		}
		mav.addObject("totalAmount", totalAmount);
		mav.addObject("CART_LIST",cartList);
		
		
		return mav;
	}
	
	@RequestMapping(value="/checkout/insert.html",method=RequestMethod.GET)
	public ModelAndView insert(Manager_info manager_info,String state,String code,String BTN,Delivery_info delivery_info,HttpSession session,String delivery_id,String delivery_number,String delivery_name,String delivery_menuname,String delivery_price,String delivery_some,String delivery_phone,String delivery_address,String delivery_note,String delivery_type) {
		
		System.out.println("BTN:"+ BTN);
		System.out.println("CODE:"+code);
		String id = (String)session.getAttribute("loginUser");
		String delivery_state = (String)BTN;
		
		
//		System.out.println("id"+delivery_id);
//		System.out.println("배달번호:"+delivery_number);
//		System.out.println("고객명:"+delivery_name);
//		System.out.println("배달메뉴이름:"+delivery_menuname);
//		System.out.println("가격:"+delivery_price);
//		System.out.println("갯수:"+delivery_some);
//		System.out.println("phone"+delivery_phone);
//		System.out.println("add:"+delivery_address);
//		System.out.println("note"+delivery_note);
//		System.out.println("type:"+delivery_type);



		
		

		
		
		Integer seqno = deliverydao.selectMaxDelivery();
		System.out.println("seqno:::::::::"+seqno);
		if(seqno == null ) {
			seqno= 1;
		}else {
			seqno = seqno+1;
		}
		System.out.println("후에 sqno"+seqno);
		
		
		
		
		delivery_info.setDelivery_id(delivery_id);
		delivery_info.setDelivery_number(delivery_number);
		delivery_info.setDelivery_name(delivery_name);
		delivery_info.setDelivery_menuname(delivery_menuname);
		delivery_info.setDelivery_price(delivery_price);
		delivery_info.setDelivery_some(delivery_some);
		delivery_info.setDelivery_phone(delivery_phone);
		delivery_info.setDelivery_type(delivery_type);
		delivery_info.setDelivery_note(delivery_note);
		delivery_info.setDelivery_address(delivery_address);
		delivery_info.setSeqno(seqno);
		delivery_info.setDelivery_state(delivery_state);
		
		deliverydao.createDelivery(delivery_info);
		
		
		
		if(BTN.equals("결제")) {
			cart.deleteItem(code, id);
		}
		
		
		ModelAndView mav = new ModelAndView("main/checkoutResult");
		
		return mav;
	}
	
	
}
