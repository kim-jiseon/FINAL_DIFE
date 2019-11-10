package com.bit.dife03.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.dife03.dao.DroneDao;
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

		ObjectMapper om = new ObjectMapper();
		String keyword = null;
		
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
	@RequestMapping("/schDro")
	public String sel_droAll() {
		String str = "";
		
		ObjectMapper om = new ObjectMapper();
		try {
			str = om.writeValueAsString(dao.sch_droS());
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return str;
	}*/

	
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
