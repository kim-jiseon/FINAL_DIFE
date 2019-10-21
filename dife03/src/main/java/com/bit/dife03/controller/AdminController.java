package com.bit.dife03.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.dife03.dao.AdminDao;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class AdminController {
	
	@Autowired
	private AdminDao dao;
	
	public void setDao(AdminDao dao) {
		this.dao = dao;
	}

	@ResponseBody
	@RequestMapping("/AdminList")
	public String listAdmin() {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(dao.listAll());
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		System.out.println(str);
		return str;
	}
	
	
	

}
