package model;

import org.springframework.stereotype.Service;

@Service
public class Prefer_info {

	private Integer seqno;
	private String prefer_id;
	private String prefer_picture;
	private String prefer_price;
	private String prefer_calorie;
	
	
	public Integer getSeqno() {
		return seqno;
	}
	public void setSeqno(Integer seqno) {
		this.seqno = seqno;
	}
	public String getPrefer_id() {
		return prefer_id;
	}
	public void setPrefer_id(String prefer_id) {
		this.prefer_id = prefer_id;
	}
	public String getPrefer_picture() {
		return prefer_picture;
	}
	public void setPrefer_picture(String prefer_picture) {
		this.prefer_picture = prefer_picture;
	}
	public String getPrefer_price() {
		return prefer_price;
	}
	public void setPrefer_price(String prefer_price) {
		this.prefer_price = prefer_price;
	}
	public String getPrefer_calorie() {
		return prefer_calorie;
	}
	public void setPrefer_calorie(String prefer_calorie) {
		this.prefer_calorie = prefer_calorie;
	}

	
	
}
