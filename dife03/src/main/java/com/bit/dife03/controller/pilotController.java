package com.bit.dife03.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.dife03.dao.PilInfoDao;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class pilotController {
	@Autowired
	private PilInfoDao dao;

	public void setDao(PilInfoDao dao) {
		this.dao = dao;
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
	@RequestMapping("/selectPil_info")
	public String selectPil_info() {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(dao.selectPil_info());
			System.out.println("controller"+str);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("예외발생"+e.getMessage());
		}
		return str;
	}
	
	@RequestMapping("/pilot")
	public void pilot() {
		
	}
	
}
