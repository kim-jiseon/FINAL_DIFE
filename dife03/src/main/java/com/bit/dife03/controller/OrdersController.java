package com.bit.dife03.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.dife03.dao.OrdersDao;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class OrdersController {
	
	
	@Autowired
	private OrdersDao dao;
	
	

	public void setDao(OrdersDao dao) {
		this.dao = dao;
	}
	

//	//Basket 리스트 출력 ModelAndView 사용
//	@RequestMapping("/basket")
//	public void basket()
//	{
//		
//	}
	
	
	@ResponseBody
	@RequestMapping("/basketList.do")
	public String listBasket()
	{	
//		HttpSession session = request.getSession();
//		String mem_id=(String)session.getAttribute("mem_id");
////		ModelAndView mav = new ModelAndView();
////		mav.addObject("list", dao.basketList("hong"));
//		
//		return mav;
		
		String str="";
		ObjectMapper ob = new ObjectMapper();
		try {
		str =	ob.writeValueAsString(dao.basketList("hong"));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return str;
	}
	
	@ResponseBody
	@RequestMapping("/deleteBasket.do")
	public String deleteBasket(String bas_no)
	{
		System.out.println(bas_no);
		String str="";
		ObjectMapper ob = new ObjectMapper();
		try {
			str = ob.writeValueAsString(dao.delBas(bas_no));
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return str;
	}
}
