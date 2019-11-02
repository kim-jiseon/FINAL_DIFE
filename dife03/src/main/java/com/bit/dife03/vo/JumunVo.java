package com.bit.dife03.vo;

import java.util.ArrayList;

public class JumunVo {
	
	private ArrayList<OrdersDetailVo> jumun;
	private String mem_no;
	private int ord_amount;
	private int ord_price;
	public ArrayList<OrdersDetailVo> getJumun() {
		return jumun;
	}
	public void setJumun(ArrayList<OrdersDetailVo> jumun) {
		this.jumun = jumun;
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
	public JumunVo() {
		// TODO Auto-generated constructor stub
	}
	
	
}
