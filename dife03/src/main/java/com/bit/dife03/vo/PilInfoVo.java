package com.bit.dife03.vo;

public class PilInfoVo {
	private String pil_no;
	private String pil_title;
	private String pil_profile;
	private String pil_info;
	private int pil_star;
	
	public PilInfoVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PilInfoVo(String pil_no, String pil_title, String pil_profile, String pil_info, int pil_star) {
		super();
		this.pil_no = pil_no;
		this.pil_title = pil_title;
		this.pil_profile = pil_profile;
		this.pil_info = pil_info;
		this.pil_star = pil_star;
	}
	public String getPil_no() {
		return pil_no;
	}
	public void setPil_no(String pil_no) {
		this.pil_no = pil_no;
	}
	public String getPil_title() {
		return pil_title;
	}
	public void setPil_title(String pil_title) {
		this.pil_title = pil_title;
	}
	public String getPil_profile() {
		return pil_profile;
	}
	public void setPil_profile(String pil_profile) {
		this.pil_profile = pil_profile;
	}
	public String getPil_info() {
		return pil_info;
	}
	public void setPil_info(String pil_info) {
		this.pil_info = pil_info;
	}
	public int getPil_star() {
		return pil_star;
	}
	public void setPil_star(int pil_star) {
		this.pil_star = pil_star;
	}
	
}
