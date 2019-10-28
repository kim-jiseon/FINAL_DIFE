package com.bit.dife03.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.dife03.dao.DroneDao;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class DroneController {

	@Autowired
	private DroneDao dao;	
	public void setDao(DroneDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/drone.do")
	public void drone() {}
	
	@ResponseBody
	@RequestMapping("/GetDroneList")
	public String selectAll_dro() {
		String str_dro = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str_dro = mapper.writeValueAsString(dao.selectAll_dro());
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return str_dro;
	}
	
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
	
	@ResponseBody
	@RequestMapping("GetTotalDroneCount")
	public String getTotalDroneCount() {
		String str = "";
		str = dao.getCount()+"";
		return str;
	}
	
/*	
	@ResponseBody
	@RequestMapping()
	public int in_droOrder() {
	}
*/
}
