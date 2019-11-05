package com.bit.dife03.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dife03.dao.BoardDao;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class BoardController {
	
	@Autowired
	private BoardDao dao;
	
	public void setDao(BoardDao dao) {
		this.dao = dao;
	}

//	@ResponseBody
//	@RequestMapping("/BoardList")
//	public String listBoard() {
//		String str = "";
//		try {
//			ObjectMapper mapper = new ObjectMapper();
//			str = mapper.writeValueAsString(dao.listAll());
//		}catch (Exception e) {
//			// TODO: handle exception
//			System.out.println("예외발생2"+e.getMessage());
//		}
//		System.out.println(str);
//		return str;
//	}
	@RequestMapping("/board")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.listAll());
		return mav;
	}
}
