package com.bit.dife03.vo;

import java.util.Date;

public class OrdersDetailVo {
	private String det_no;
	private String ord_no;
	private String pos_no;
	private int det_amount;
	private int det_price;
	private Date det_rental;
	private Date det_return;
	private int det_rental_stat;
	
	public int getDet_price() {
		return det_price;
	}
	public void setDet_price(int det_price) {
		this.det_price = det_price;
	}
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
	public Date getDet_rental() {
		return det_rental;
	}
	public void setDet_rental(Date det_rental) {
		this.det_rental = det_rental;
	}
	public Date getDet_return() {
		return det_return;
	}
	public void setDet_return(Date det_return) {
		this.det_return = det_return;
	}
	public int getDet_rental_stat() {
		return det_rental_stat;
	}
	public void setDet_rental_stat(int det_rental_stat) {
		this.det_rental_stat = det_rental_stat;
	}

	public OrdersDetailVo(String det_no, String ord_no, String pos_no, int det_amount, int det_price, Date det_rental,
			Date det_return, int det_rental_stat) {
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
	@Override
	public String toString() {
		return "OrdersDetailVo [det_no=" + det_no + ", ord_no=" + ord_no + ", pos_no=" + pos_no + ", det_amount="
				+ det_amount + ", det_price=" + det_price + ", det_rental=" + det_rental + ", det_return=" + det_return
				+ ", det_rental_stat=" + det_rental_stat + ", getDet_price()=" + getDet_price() + ", getDet_no()="
				+ getDet_no() + ", getOrd_no()=" + getOrd_no() + ", getPos_no()=" + getPos_no() + ", getDet_amount()="
				+ getDet_amount() + ", getDet_rental()=" + getDet_rental() + ", getDet_return()=" + getDet_return()
				+ ", getDet_rental_stat()=" + getDet_rental_stat() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
}
