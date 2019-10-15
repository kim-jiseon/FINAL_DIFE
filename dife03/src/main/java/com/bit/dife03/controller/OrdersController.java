package com.bit.dife03.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class OrdersController {
	
	
	
	//Basket 리스트 출력
	@ResponseBody
	@RequestMapping("/bas_list")
	public String listBasket()
	{
		String str="";
		ObjectMapper
		return str;
	}
}
