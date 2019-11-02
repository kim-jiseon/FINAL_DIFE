package com.bit.dife03.controller;



import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.dife03.dao.OrdersDao;
import com.bit.dife03.vo.BasketVo;
import com.bit.dife03.vo.JumunVo;
import com.bit.dife03.vo.MemberVo;
import com.bit.dife03.vo.OrdersDetailVo;
import com.bit.dife03.vo.OrdersVo;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class OrdersController {
	
	
	@Autowired
	private OrdersDao dao;
	public void setDao(OrdersDao dao) {
		this.dao = dao;
	}

	@ResponseBody
	@RequestMapping("/basketList.do")
	public String listBasket(String mem_id)
	{	
		String str="";
		
		if(mem_id != null)
		{
		
		ObjectMapper ob = new ObjectMapper();
		try {
		str =	ob.writeValueAsString(dao.basketList(mem_id));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		return str;
	}
	
	//버튼 클릭시 삭제.
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
	// 장바구니 리스트 삭제
	@ResponseBody
	@RequestMapping(value="/deleteListBasket.do",method = RequestMethod.POST)
	public int deleteListBasket(HttpSession session,
	     @RequestParam(value = "checkList[]") List<String> chArr, BasketVo bas) {
		/*
		 * MemberVo member = (MemberVo)session.getAttribute("mem_id"); String mem_id =
		 * member.getMem_id();
		 */
		System.out.println("진입");
		  	String member1= "hong";
		  	int result = 0;
		  	String bas_no = "";
	 
	 
	 if(member1 != null) {
	  bas.setMem_name(member1);
	  
	  for(String i : chArr) {   
		  	bas_no = i;
			bas.setBas_no(bas_no);
			dao.delBas(i);
	  }   
	  result = 1;
	 }  
	 return result;
	 
	}
	//주문 인설트,주문상세 인설트
	@ResponseBody
	@RequestMapping(value="/jumunInsert.do",method = RequestMethod.POST)
	public int insertJumun(
			JumunVo jumun,
			OrdersVo ord,
			OrdersDetailVo od)
	{
		System.out.println("controller 진입");
		
		
		int re=0;

		ArrayList<OrdersDetailVo> list=	jumun.getJumun();
		for(OrdersDetailVo b : list)
		{
			od.setDet_amount(b.getDet_amount());
			od.setDet_price(b.getDet_price());
			od.setDet_rental(b.getDet_rental());
			od.setDet_return(b.getDet_return());
			re ++;
		}

		

		String mem_no = jumun.getMem_no();
		int amount=jumun.getOrd_amount();
		int price=jumun.getOrd_price();
		System.out.println(mem_no);
	
		System.out.println(amount); System.out.println(price);
		 
	
		return re;
	}
	//주문상세 리스트
	@ResponseBody
	@RequestMapping("/basketList.do")
	public String listOrders(String mem_id)
	{	
		String str="";
		
		if(mem_id != null)
		{
		
		ObjectMapper ob = new ObjectMapper();
		try {
		str =	ob.writeValueAsString(dao.basketList(mem_id));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		return str;
	}
}