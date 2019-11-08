package com.bit.dife03.vo;

import java.util.Date;

public class PilReservationVo {
	private int con_no;
	private int con_sort;
	private String list_no;
	private String mem_no;
	private String con_time;
	private int con_attend;
	private String con_purpose;
	private String con_loc;
	private Date con_start;
	private Date con_end;
	private Date con_regDate;
	private String pil_title;
	private String mem_name;
	public PilReservationVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PilReservationVo(int con_no, int con_sort, String list_no, String mem_no, String con_time, int con_attend,
			String con_purpose, String con_loc, Date con_start, Date con_end, Date con_regDate, String pil_title,
			String mem_name) {
		super();
		this.con_no = con_no;
		this.con_sort = con_sort;
		this.list_no = list_no;
		this.mem_no = mem_no;
		this.con_time = con_time;
		this.con_attend = con_attend;
		this.con_purpose = con_purpose;
		this.con_loc = con_loc;
		this.con_start = con_start;
		this.con_end = con_end;
		this.con_regDate = con_regDate;
		this.pil_title = pil_title;
		this.mem_name = mem_name;
	}
	public int getCon_no() {
		return con_no;
	}
	public void setCon_no(int con_no) {
		this.con_no = con_no;
	}
	public int getCon_sort() {
		return con_sort;
	}
	public void setCon_sort(int con_sort) {
		this.con_sort = con_sort;
	}
	public String getList_no() {
		return list_no;
	}
	public void setList_no(String list_no) {
		this.list_no = list_no;
	}
	public String getMem_no() {
		return mem_no;
	}
	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}
	public String getCon_time() {
		return con_time;
	}
	public void setCon_time(String con_time) {
		this.con_time = con_time;
	}
	public int getCon_attend() {
		return con_attend;
	}
	public void setCon_attend(int con_attend) {
		this.con_attend = con_attend;
	}
	public String getCon_purpose() {
		return con_purpose;
	}
	public void setCon_purpose(String con_purpose) {
		this.con_purpose = con_purpose;
	}
	public String getCon_loc() {
		return con_loc;
	}
	public void setCon_loc(String con_loc) {
		this.con_loc = con_loc;
	}
	public Date getCon_start() {
		return con_start;
	}
	public void setCon_start(Date con_start) {
		this.con_start = con_start;
	}
	public Date getCon_end() {
		return con_end;
	}
	public void setCon_end(Date con_end) {
		this.con_end = con_end;
	}
	public Date getCon_regDate() {
		return con_regDate;
	}
	public void setCon_regDate(Date con_regDate) {
		this.con_regDate = con_regDate;
	}
	public String getPil_title() {
		return pil_title;
	}
	public void setPil_title(String pil_title) {
		this.pil_title = pil_title;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	@Override
	public String toString() {
		return "PilReservationVo [con_no=" + con_no + ", con_sort=" + con_sort + ", list_no=" + list_no + ", mem_no="
				+ mem_no + ", con_time=" + con_time + ", con_attend=" + con_attend + ", con_purpose=" + con_purpose
				+ ", con_loc=" + con_loc + ", con_start=" + con_start + ", con_end=" + con_end + ", con_regDate="
				+ con_regDate + ", pil_title=" + pil_title + ", mem_name=" + mem_name + "]";
	}
	
}
