package com.bit.dife03.vo;

import java.util.Date;

public class DroneVo {

	private String dro_no;
	private String dro_name;
	private String dro_series;
	private String dro_series_no;
	private String dro_made;
	private String dro_photo;
	private String first;
	private Date first_time;
	private String last;
	private Date last_time;
	public DroneVo(String dro_no, String dro_name, String dro_series, String dro_series_no, String dro_made,
			String dro_photo, String first, Date first_time, String last, Date last_time) {
		super();
		this.dro_no = dro_no;
		this.dro_name = dro_name;
		this.dro_series = dro_series;
		this.dro_series_no = dro_series_no;
		this.dro_made = dro_made;
		this.dro_photo = dro_photo;
		this.first = first;
		this.first_time = first_time;
		this.last = last;
		this.last_time = last_time;
	}
	public DroneVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getDro_no() {
		return dro_no;
	}
	public void setDro_no(String dro_no) {
		this.dro_no = dro_no;
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
	public String getDro_series_no() {
		return dro_series_no;
	}
	public void setDro_series_no(String dro_series_no) {
		this.dro_series_no = dro_series_no;
	}
	public String getDro_made() {
		return dro_made;
	}
	public void setDro_made(String dro_made) {
		this.dro_made = dro_made;
	}
	public String getDro_photo() {
		return dro_photo;
	}
	public void setDro_photo(String dro_photo) {
		this.dro_photo = dro_photo;
	}
	public String getFirst() {
		return first;
	}
	public void setFirst(String first) {
		this.first = first;
	}
	public Date getFirst_time() {
		return first_time;
	}
	public void setFirst_time(Date first_time) {
		this.first_time = first_time;
	}
	public String getLast() {
		return last;
	}
	public void setLast(String last) {
		this.last = last;
	}
	public Date getLast_time() {
		return last_time;
	}
	public void setLast_time(Date last_time) {
		this.last_time = last_time;
	}
	
}
