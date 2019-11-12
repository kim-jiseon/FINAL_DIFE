package com.bit.dife03.vo;

import java.sql.Date;

public class BasketVo {
	private String bas_no;
	private String dro_name;
	private String mem_name;
	private int bas_amount;
	private int bas_price;
	private Date bas_rental;
	private Date bas_return;
	private Date bas_time;
	private String dro_series;
	private String pil_career;
	private String pil_loc;
	private String pil_profile;
	private String dro_photo;
	private int pos_price;
	private int point;
	private int mem_point;
	private String pos_no;
	private String mem_no;
	
	
	public String getPil_profile() {
		return pil_profile;
	}
	public void setPil_profile(String pil_profile) {
		this.pil_profile = pil_profile;
	}
	public String getMem_no() {
		return mem_no;
	}
	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}
	public String getPos_no() {
		return pos_no;
	}
	public void setPos_no(String pos_no) {
		this.pos_no = pos_no;
	}
	public int getMem_point() {
		return mem_point;
	}
	public void setMem_point(int mem_point) {
		this.mem_point = mem_point;
	}
	public String getBas_no() {
		return bas_no;
	}
	public void setBas_no(String bas_no) {
		this.bas_no = bas_no;
	}
	public String getDro_name() {
		return dro_name;
	}
	public void setDro_name(String dro_name) {
		this.dro_name = dro_name;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public int getBas_amount() {
		return bas_amount;
	}
	public void setBas_amount(int bas_amount) {
		this.bas_amount = bas_amount;
	}
	public int getBas_price() {
		return bas_price;
	}
	public void setBas_price(int bas_price) {
		this.bas_price = bas_price;
	}
	public Date getBas_rental() {
		return bas_rental;
	}
	public void setBas_rental(Date bas_rental) {
		this.bas_rental = bas_rental;
	}
	public Date getBas_return() {
		return bas_return;
	}
	public void setBas_return(Date bas_return) {
		this.bas_return = bas_return;
	}
	public Date getBas_time() {
		return bas_time;
	}
	public void setBas_time(Date bas_time) {
		this.bas_time = bas_time;
	}
	public String getDro_series() {
		return dro_series;
	}
	public void setDro_series(String dro_series) {
		this.dro_series = dro_series;
	}
	public String getPil_career() {
		return pil_career;
	}
	public void setPil_career(String pil_career) {
		this.pil_career = pil_career;
	}
	public String getPil_loc() {
		return pil_loc;
	}
	public void setPil_loc(String pil_loc) {
		this.pil_loc = pil_loc;
	}
	public String getDro_photo() {
		return dro_photo;
	}
	public void setDro_photo(String dro_photo) {
		this.dro_photo = dro_photo;
	}
	public int getPos_price() {
		return pos_price;
	}
	public void setPos_price(int pos_price) {
		this.pos_price = pos_price;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	
	public BasketVo(String bas_no, String dro_name, String mem_name, int bas_amount, int bas_price, Date bas_rental,
			Date bas_return, Date bas_time, String dro_series, String pil_career, String pil_loc, String dro_photo,
			int pos_price, int point, int mem_point, String pos_no, String mem_no) {
		super();
		this.bas_no = bas_no;
		this.dro_name = dro_name;
		this.mem_name = mem_name;
		this.bas_amount = bas_amount;
		this.bas_price = bas_price;
		this.bas_rental = bas_rental;
		this.bas_return = bas_return;
		this.bas_time = bas_time;
		this.dro_series = dro_series;
		this.pil_career = pil_career;
		this.pil_loc = pil_loc;
		this.dro_photo = dro_photo;
		this.pos_price = pos_price;
		this.point = point;
		this.mem_point = mem_point;
		this.pos_no = pos_no;
		this.mem_no = mem_no;
	}
	public BasketVo() {
		// TODO Auto-generated constructor stub
	}
}
