package com.bit.dife03.vo;

import java.util.Date;

public class OrdersVo {
	private String ord_no;
	private String mem_no;
	private int ord_amount;
	private int ord_price;
	private int ord_sale;
	private int ord_fin_price;
	private Date ord_date;
	private int ord_pay_state;
	public String getOrd_no() {
		return ord_no;
	}
	public void setOrd_no(String ord_no) {
		this.ord_no = ord_no;
	}
	public String getMem_no() {
		return mem_no;
	}
	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}
	public int getOrd_amount() {
		return ord_amount;
	}
	public void setOrd_amount(int ord_amount) {
		this.ord_amount = ord_amount;
	}
	public int getOrd_price() {
		return ord_price;
	}
	public void setOrd_price(int ord_price) {
		this.ord_price = ord_price;
	}
	public int getOrd_sale() {
		return ord_sale;
	}
	public void setOrd_sale(int ord_sale) {
		this.ord_sale = ord_sale;
	}
	public int getOrd_fin_price() {
		return ord_fin_price;
	}
	public void setOrd_fin_price(int ord_fin_price) {
		this.ord_fin_price = ord_fin_price;
	}
	public Date getOrd_date() {
		return ord_date;
	}
	public void setOrd_date(Date ord_date) {
		this.ord_date = ord_date;
	}
	public int getOrd_pay_state() {
		return ord_pay_state;
	}
	public void setOrd_pay_state(int ord_pay_state) {
		this.ord_pay_state = ord_pay_state;
	}
	public OrdersVo(String ord_no, String mem_no, int ord_amount, int ord_price, int ord_sale, int ord_fin_price,
			Date ord_date, int ord_pay_state) {
		super();
		this.ord_no = ord_no;
		this.mem_no = mem_no;
		this.ord_amount = ord_amount;
		this.ord_price = ord_price;
		this.ord_sale = ord_sale;
		this.ord_fin_price = ord_fin_price;
		this.ord_date = ord_date;
		this.ord_pay_state = ord_pay_state;
	}
	public OrdersVo() {
		// TODO Auto-generated constructor stub
	}
	
}
