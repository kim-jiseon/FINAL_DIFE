package com.bit.dife03.vo;

public class MainVo {
	private String mem_name;
	private String mem_fname;
	private String boa_fname;
	private int boa_view;
	
	public MainVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MainVo(String mem_name, String mem_fname, String boa_fname, int boa_view) {
		super();
		this.mem_name = mem_name;
		this.mem_fname = mem_fname;
		this.boa_fname = boa_fname;
		this.boa_view = boa_view;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_fname() {
		return mem_fname;
	}
	public void setMem_fname(String mem_fname) {
		this.mem_fname = mem_fname;
	}
	public String getBoa_fname() {
		return boa_fname;
	}
	public void setBoa_fname(String boa_fname) {
		this.boa_fname = boa_fname;
	}
	public int getBoa_view() {
		return boa_view;
	}
	public void setBoa_view(int boa_view) {
		this.boa_view = boa_view;
	}
}
