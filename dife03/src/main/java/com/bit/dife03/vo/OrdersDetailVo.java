package com.bit.dife03.vo;

import java.util.Date;

public class OrdersDetailVo {
	private String det_no;
	private String ord_no;
	private String pos_no;
	private int det_amount;
	private int det_price;
	private String det_rental;
	private String det_return;
	private int det_rental_stat;
	public String getDet_no() {
		return det_no;
	}
	public void setDet_no(String det_no) {
		this.det_no = det_no;
	}
	public String getOrd_no() {
		return ord_no;
	}
	public void setOrd_no(String ord_no) {
		this.ord_no = ord_no;
	}
	public String getPos_no() {
		return pos_no;
	}
	public void setPos_no(String pos_no) {
		this.pos_no = pos_no;
	}
	public int getDet_amount() {
		return det_amount;
	}
	public void setDet_amount(int det_amount) {
		this.det_amount = det_amount;
	}
	public int getDet_price() {
		return det_price;
	}
	public void setDet_price(int det_price) {
		this.det_price = det_price;
	}
	public String getDet_rental() {
		return det_rental;
	}
	public void setDet_rental(String det_rental) {
		this.det_rental = det_rental;
	}
	public String getDet_return() {
		return det_return;
	}
	public void setDet_return(String det_return) {
		this.det_return = det_return;
	}
	public int getDet_rental_stat() {
		return det_rental_stat;
	}
	public void setDet_rental_stat(int det_rental_stat) {
		this.det_rental_stat = det_rental_stat;
	}
	public OrdersDetailVo(String det_no, String ord_no, String pos_no, int det_amount, int det_price, String det_rental,
			String det_return, int det_rental_stat) {
		super();
		this.det_no = det_no;
		this.ord_no = ord_no;
		this.pos_no = pos_no;
		this.det_amount = det_amount;
		this.det_price = det_price;
		this.det_rental = det_rental;
		this.det_return = det_return;
		this.det_rental_stat = det_rental_stat;
	}

	public OrdersDetailVo() {
		// TODO Auto-generated constructor stub
	}
	
}
