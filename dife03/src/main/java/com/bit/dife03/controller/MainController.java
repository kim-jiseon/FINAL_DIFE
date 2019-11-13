package com.bit.dife03.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.dife03.dao.MainDao;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class MainController {

	@Autowired
	private MainDao dao;

	public void setDao(MainDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/main")
	public void main() {
		
	}
	
//	@ResponseBody
//	@RequestMapping("/main")
//	public String sel_board() {
//		String str = "";
//		try {
//			ObjectMapper mapper = new ObjectMapper();
//			str = mapper.writeValueAsString(dao.sel_board());
//			System.out.println("string:"+str);
//		} catch (Exception e) {
//			// TODO: handle exception
//			System.out.println("예외:"+e.getMessage());
//		}
//		return str;
//	}
	
}
