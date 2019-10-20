package com.bit.dife03.vo;

public class PilInfoVo {
	private int info_no;
	private String pil_no;
	private String mem_name;
	private String pil_title;
	private int pil_cateInfo;
	private String pil_profile;
	private String pil_locInfo;
	private String pil_info;
	private int pil_star;
	
	public PilInfoVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PilInfoVo(int info_no, String pil_no, String mem_name, String pil_title, int pil_cateInfo,
			String pil_profile, String pil_locInfo, String pil_info, int pil_star) {
		super();
		this.info_no = info_no;
		this.pil_no = pil_no;
		this.mem_name = mem_name;
		this.pil_title = pil_title;
		this.pil_cateInfo = pil_cateInfo;
		this.pil_profile = pil_profile;
		this.pil_locInfo = pil_locInfo;
		this.pil_info = pil_info;
		this.pil_star = pil_star;
	}
	public int getInfo_no() {
		return info_no;
	}
	public void setInfo_no(int info_no) {
		this.info_no = info_no;
	}
	public String getPil_no() {
		return pil_no;
	}
	public void setPil_no(String pil_no) {
		this.pil_no = pil_no;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getPil_title() {
		return pil_title;
	}
	public void setPil_title(String pil_title) {
		this.pil_title = pil_title;
	}
	public int getPil_cateInfo() {
		return pil_cateInfo;
	}
	public void setPil_cateInfo(int pil_cateInfo) {
		this.pil_cateInfo = pil_cateInfo;
	}
	public String getPil_profile() {
		return pil_profile;
	}
	public void setPil_profile(String pil_profile) {
		this.pil_profile = pil_profile;
	}
	public String getPil_locInfo() {
		return pil_locInfo;
	}
	public void setPil_locInfo(String pil_locInfo) {
		this.pil_locInfo = pil_locInfo;
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
	@Override
	public String toString() {
		return "PilInfoVo [info_no=" + info_no + ", pil_no=" + pil_no + ", mem_name=" + mem_name + ", pil_title="
				+ pil_title + ", pil_cateInfo=" + pil_cateInfo + ", pil_profile=" + pil_profile + ", pil_locInfo="
				+ pil_locInfo + ", pil_info=" + pil_info + ", pil_star=" + pil_star + "]";
	}
	
}
