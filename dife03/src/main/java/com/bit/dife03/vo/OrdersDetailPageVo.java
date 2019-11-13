package com.bit.dife03.vo;

import java.util.Date;

public class OrdersDetailPageVo {
	private String ord_no;
	private int ord_price;
	private int det_amount;
	private int det_price;
	private Date det_rental;
	private Date det_return;
	private int mem_point;
	private String dro_name;
	private String dro_series;
	private String dro_photo;
	private String mem_name;
	private String pil_career;
	private String pil_profile;
	private Date ord_date;
	
	
	public Date getOrd_date() {
		return ord_date;
	}
	public void setOrd_date(Date ord_date) {
		this.ord_date = ord_date;
	}
	public String getOrd_no() {
		return ord_no;
	}
	public void setOrd_no(String ord_no) {
		this.ord_no = ord_no;
	}
	public int getOrd_price() {
		return ord_price;
	}
	public void setOrd_price(int ord_price) {
		this.ord_price = ord_price;
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
	public int getMem_point() {
		return mem_point;
	}
	public void setMem_point(int mem_point) {
		this.mem_point = mem_point;
	}
	public String getDro_name() {
		return dro_name;
	}
	public void setDro_name(String dro_name) {
		this.dro_name = dro_name;
	}
	public String getDro_series() {
		return dro_series;
	}
	public void setDro_series(String dro_series) {
		this.dro_series = dro_series;
	}
	public String getDro_photo() {
		return dro_photo;
	}
	public void setDro_photo(String dro_photo) {
		this.dro_photo = dro_photo;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getPil_career() {
		return pil_career;
	}
	public void setPil_career(String pil_career) {
		this.pil_career = pil_career;
	}
	

	
	public String getPil_profile() {
		return pil_profile;
	}
	public void setPil_profile(String pil_profile) {
		this.pil_profile = pil_profile;
	}

	public OrdersDetailPageVo(String ord_no, int ord_price, int det_amount, int det_price, Date det_rental,
			Date det_return, int mem_point, String dro_name, String dro_series, String dro_photo, String mem_name,
			String pil_career, String pil_profile, Date ord_date) {
		super();
		this.ord_no = ord_no;
		this.ord_price = ord_price;
		this.det_amount = det_amount;
		this.det_price = det_price;
		this.det_rental = det_rental;
		this.det_return = det_return;
		this.mem_point = mem_point;
		this.dro_name = dro_name;
		this.dro_series = dro_series;
		this.dro_photo = dro_photo;
		this.mem_name = mem_name;
		this.pil_career = pil_career;
		this.pil_profile = pil_profile;
		this.ord_date = ord_date;
	}
	public OrdersDetailPageVo() {
		// TODO Auto-generated constructor stub
	}


}
