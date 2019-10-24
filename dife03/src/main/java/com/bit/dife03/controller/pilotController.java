package com.bit.dife03.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dife03.dao.PilInfoDao;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class pilotController {
	//한페이지 당 게시글 수
	int pageRecord = 5;
	
	//총 게시글 수
	int totalRecord = 0;
	
	//전체페이지수 (default=1)
	int totalPage = 1;
	
	@Autowired
	private PilInfoDao dao;

	public void setDao(PilInfoDao dao) {
		this.dao = dao;
	}
	
	public void paging(int pageNUM) {
		totalRecord = dao.sel_pil_cnt();
		totalPage = (int) Math.ceil(totalRecord/(double)pageRecord);
		
		
		//해당페이지의 시작글번호, 끝번호
		int start = (pageNUM-1)*pageRecord+1;
		int end = start+pageRecord-1;
	}
	
	@ResponseBody
	@RequestMapping("/sel_pil")
	public String sel_pil(String category, String location) {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(dao.sel_pil(category, location));
			System.out.println("select: "+str);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return str;
	}
	
	@ResponseBody
	@RequestMapping("/selectPil_list")
	public String selectPil_info() {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(dao.selectPil_list());
			System.out.println("controller"+str);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("예외발생"+e.getMessage());
		}
		return str;
	}
	
	@RequestMapping("/pilotDetail")
	public ModelAndView pilotDetail(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int info = Integer.parseInt(request.getParameter("info"));
		mav.addObject("info",dao.sel_pil_detail(info));
		//System.out.println("번호:"+info);
		return mav;
	}
	
	@RequestMapping("/pilot")
	public void pilot() {
		
	}
	
}
