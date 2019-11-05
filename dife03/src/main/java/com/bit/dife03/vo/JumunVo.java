package com.bit.dife03.vo;

import java.util.List;

public class JumunVo {
	
	private List<OrdersDetailVo> jumun;
	private String mem_no;
	private int ord_amount;
	private int ord_price;
	
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
	public JumunVo() {
		// TODO Auto-generated constructor stub
	}
	
	public List<OrdersDetailVo> getJumun() {
		return jumun;
	}
	public void setJumun(List<OrdersDetailVo> jumun) {
		this.jumun = jumun;
	}
	
	public JumunVo(List<OrdersDetailVo> jumun, String mem_no, int ord_amount, int ord_price) {
		super();
		this.jumun = jumun;
		this.mem_no = mem_no;
		this.ord_amount = ord_amount;
		this.ord_price = ord_price;
	}


	
	
	
}
