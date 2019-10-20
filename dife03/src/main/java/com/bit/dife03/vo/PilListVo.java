package com.bit.dife03.vo;

public class PilListVo {
	private int list_no;
	private String pil_no;
	private String mem_name;
	private String pil_title;
	private int pil_cateInfo;
	private String pil_photo;
	private String pil_locInfo;
	private String pil_info;
	private int pil_star;
	
	public PilListVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PilListVo(int list_no, String pil_no, String mem_name, String pil_title, int pil_cateInfo, String pil_photo,
			String pil_locInfo, String pil_info, int pil_star) {
		super();
		this.list_no = list_no;
		this.pil_no = pil_no;
		this.mem_name = mem_name;
		this.pil_title = pil_title;
		this.pil_cateInfo = pil_cateInfo;
		this.pil_photo = pil_photo;
		this.pil_locInfo = pil_locInfo;
		this.pil_info = pil_info;
		this.pil_star = pil_star;
	}
	public int getList_no() {
		return list_no;
	}
	public void setList_no(int list_no) {
		this.list_no = list_no;
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
	public String getPil_photo() {
		return pil_photo;
	}
	public void setPil_photo(String pil_photo) {
		this.pil_photo = pil_photo;
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
		return "PilInfoVo [list_no=" + list_no + ", pil_no=" + pil_no + ", mem_name=" + mem_name + ", pil_title="
				+ pil_title + ", pil_cateInfo=" + pil_cateInfo + ", pil_photo=" + pil_photo + ", pil_locInfo="
				+ pil_locInfo + ", pil_info=" + pil_info + ", pil_star=" + pil_star + "]";
	}
}
