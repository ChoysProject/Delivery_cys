package controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.CartDao;
import dao.LoginDao;
import model.Cart;
import model.Menu_info;
import model.Mybasket_info;

@Controller
public class CartController {
	@Autowired
	private CartDao cartDao;
	@Autowired
	private Cart cart;
	@Autowired
	private LoginDao loginDao;
	
	
	@RequestMapping(value="/cart/modify.html", method=RequestMethod.POST)
	public ModelAndView modify(String CODE,
			Integer NUMBER, String BTN, HttpSession session) {
		
		System.out.println("버튼:"+BTN);
		System.out.println("CODE"+CODE);
		System.out.println("NUMBER"+NUMBER);

		String id = (String)session.getAttribute("loginUser");
		
		if(BTN.equals("수정")) {	
			
//			System.out.println("버튼:"+BTN);
//			System.out.println("CODE"+CODE);
//			System.out.println("NUMBER"+NUMBER);
			
			cart.modifyItem(CODE, NUMBER, id);
		}else if(BTN.equals("삭제")) {
			cart.deleteItem(CODE, id);
		}
		return new ModelAndView(
				"redirect:/cart/show.html");
	}

	
	@RequestMapping(value="/cart/addCart.html")
	public ModelAndView addCart(String CODE,
			HttpSession session, Integer menu_some) {
		String id=
			(String)session.getAttribute("loginUser");

	
		Cart cart = (Cart)session.getAttribute("CART");
		if(cart == null) cart = this.cart;
		cart.addCart(CODE,menu_some,id);//카트에 저장
		session.setAttribute("CART", cart);
		ModelAndView mav = new ModelAndView(
				"main/addmybasketResult");
		mav.addObject("MENU_SOME",1);
		return mav;
	}
	
	@RequestMapping(value="/cart/show.html",method=RequestMethod.GET)
	public ModelAndView showCart(HttpSession session) {
		ModelAndView mav = new ModelAndView("main/costomerpage");
		String id = (String)session.getAttribute("loginUser");
		List<Mybasket_info> cartList = cart.getCart(id);
		System.out.println(cartList);
		int totalAmount = 0;
		if(cartList.size() > 0) {
			Iterator it = cartList.iterator();
			while(it.hasNext()) {
			Mybasket_info mybasket_info = (Mybasket_info)it.next();
			
//			System.out.println("가격:"+mybasket_info.getMybasket_price());
//			System.out.println("아미지이름:"+mybasket_info.getMybasket_picture());
//			System.out.println("이름:"+mybasket_info.getMybasket_name());
//			System.out.println("갯수:"+mybasket_info.getNum());
//			System.out.println("칼로리:"+mybasket_info.getMybasket_calorie());
				
			int total = mybasket_info.getMybasket_price() *
					mybasket_info.getNum();
			totalAmount = totalAmount + total;
			}//end of while
			mav.addObject("SIZE","YES");
		}else {
			mav.addObject("SIZE","NO");
		}
		mav.addObject("totalAmount",totalAmount);
		mav.addObject("BODY","cartListView.jsp");
		mav.addObject("CART_LIST",cartList);
		return mav;
	}
	
	
}


