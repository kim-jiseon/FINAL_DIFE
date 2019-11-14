package com.bit.dife03.vo;

import java.util.Date;

public class OrdersVo {
	private String ord_no;
	private String mem_no;
	private int ord_amount;
	private int ord_price;
	private Date ord_date;
	private int ord_pay_state;
	private String mem_name;
	private String mem_id;
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
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
	
	
	

	public OrdersVo(String ord_no, String mem_no, int ord_amount, int ord_price, Date ord_date, int ord_pay_state,
			String mem_name, String mem_id) {
		super();
		this.ord_no = ord_no;
		this.mem_no = mem_no;
		this.ord_amount = ord_amount;
		this.ord_price = ord_price;
		this.ord_date = ord_date;
		this.ord_pay_state = ord_pay_state;
		this.mem_name = mem_name;
		this.mem_id = mem_id;
	}
	public OrdersVo() {
		// TODO Auto-generated constructor stub
	}
	
}
