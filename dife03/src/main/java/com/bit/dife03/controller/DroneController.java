package com.bit.dife03.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dife03.dao.DroneDao;
import com.bit.dife03.vo.DroneVo;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class DroneController {
	
	int pageSIZE = 5;	// 한 페이지 당 보여질 상품수
	int totalRecord = 0;	// 총 게시할 상품수
	int totalPage = 2;	// 전체 페이지 수
	
	@Autowired
	private DroneDao dao;	
	public void setDao(DroneDao dao) {
		this.dao = dao;
	}
	
	@ResponseBody
	@RequestMapping("/droAll")
	public String sel_droAll(HashMap map, HttpSession session) {
		String str = "";
		//String str_schS = "";
		//String str_schP = "";		
		
		ObjectMapper om = new ObjectMapper();
		String keyword = null;
		/*
		if(session.getAttribute("String") != null) {
			keyword = (String)session.getAttribute(dao.);
		}
		if(keyword != null && !keyword.equals("")) {
			map.put("calendar", session.getAttribute(calendar));
			map.put("sub_series_02",session.getAttribute(sub_series_02));
			map.put("sub_price", session.getAttribute(sub_price));
			
			session.setAttribute("calendar", calendar);
			session.setAttribute("sub_series_02", sub_series_02);
			session.setAttribute("sub_price", sub_price);
		}
		*/
		
		try {
			str = om.writeValueAsString(dao.sel_droAll(map));
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return str;
	}
	
	/*
	@ResponseBody
	@RequestMapping()
	public String sel_droDetail(String pos_no) {
		String str_drodt = "";
		try{
			ObjectMapper mapper = new ObjectMapper();
			str_drodt = mapper.writeValueAsString(dao.sel_droDetail(pos_no));
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return str_drodt;
	}
	
/*	
	@ResponseBody
	@RequestMapping()
	public int in_droOrder() {
	}
*/
}
