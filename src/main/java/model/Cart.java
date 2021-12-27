package model;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CartDao;

@Service
public class Cart {
	@Autowired
	private CartDao cartDao;
	public List<Mybasket_info> getCart(String id){
		return cartDao.selectCart(id);
	}//계정으로 장바구니를 검색
	
	public LinkedList<String> codeList =
			new LinkedList<String>();//상품번호 목록
	public LinkedList<Integer> numList =
			new LinkedList<Integer>();//상품갯수 목록
	
	public void setCodeList(int index, String code) {
		this.codeList.add(index, code);
	}
	public void setNumList(int index, Integer num) {
		this.numList.add(index, num);
	}
	
	
	
	public void modifyItem(String code,Integer num,String id) {
		System.out.println("code"+code);
		System.out.println("num"+num);
		System.out.println("id"+id);
	
		System.out.println(codeList.size());
		for(int cnt=0; cnt<codeList.size(); cnt++) {
			
			if(codeList.get(cnt).equals(code)) {
				numList.set(cnt, num);//갯수 변경
				updateCart(code,num,id);//DB에서 변경
				return;//메서드 종료
			}
		}
	}
	
	

	
	public void addCart(String code, int num,String id) {
		System.out.println("addCart:"+code+","+num+","+id);
		for(int i=0; i<codeList.size(); i++) {
			if(codeList.get(i).equals(code)) {
				System.out.println("addCart if true");
				numList.set(i, numList.get(i)+num);//갯수변경
//				updateCart(code,numList.get(i),id);
				return;//메서드 종료
			}//이미 장바구니에 있는 상품인지 검사
		}
		codeList.add(code); numList.add(num);//장바구니에추가
		System.out.println("장바구니 추가 다음");
		insertCart(code,num,id);//DB에 삽입
	}//장바구니에 담는 메서드
	
	
	
	
	public void deleteItem(String code, String id) {
		System.out.println("code:dele"+ code);
		System.out.println("id:dele"+id);
		System.out.println("codeList"+codeList.size());
		for(int cnt=0; cnt<codeList.size(); cnt++) {
			if(codeList.get(cnt).equals(code)) {
				codeList.remove(cnt);//장바구니에서 해당 상품코드 삭제
				numList.remove(cnt);
				Mybasket_info mybasket_info = new Mybasket_info();
				mybasket_info.setId(id); mybasket_info.setCode(code);
				cartDao.deleteCart(mybasket_info);
				System.out.println("삭제됨:"+code+","+id);
				return;
			}
		}
	}
	
	
	
	
	
	private void insertCart(String code,int num,
			String id) {
		Integer seqno=cartDao.selectMaxCart();//일련번호
		if(seqno == null) seqno = 1;
		else seqno= seqno + 1;

		System.out.println("일렬"+seqno);
		System.out.println("코트"+code);
		System.out.println("id"+id);
		System.out.println("수량"+ num);
		
		Mybasket_info mybasket_info = new Mybasket_info();
		mybasket_info.setCode(code);
		mybasket_info.setId(id);
		mybasket_info.setNum(num);
		mybasket_info.setSeqno(seqno);
		System.out.println("Cart 클래스:insertCart()");
		cartDao.insertCart(mybasket_info);
	}//장바구니에 상품 삽입

	
	
	private void updateCart(String code, int num, String id) {
		System.out.println(
				"Cart클래스,updateCart():code:"+code+",num:"+num);
		Mybasket_info mybasket_info = new Mybasket_info();
		mybasket_info.setCode(code); mybasket_info.setNum(num);
		mybasket_info.setId(id);
		cartDao.updateCart(mybasket_info);
	}//장바구니에 상품정보 변경
	
	
	
}












