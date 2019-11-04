package com.bit.dife03.controller;



import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
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
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import ch.qos.logback.core.subst.Token.Type;




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
	//Date format
	public String getDate(long time) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss");  //<--millisecond는 "sss"가 아니라 "SSS"로 해야 정확하게 보존된다.

		            long timeInMillis =time;

		            Date timeInDate = new Date(timeInMillis); 
		            String timeInFormat = sdf.format(timeInDate);

		            return timeInFormat;
	}
	//
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
	public int insertJumun(@RequestBody Map<String, Object> param,OrdersVo od,OrdersDetailVo odv) throws Exception
	{
		int re=0;
		System.out.println(param);
		System.out.println("controller 진입");
		String mem_no = (String)param.get("mem_no");
		int ord_price=(int)param.get("ord_price");
		int ord_amount=(int)param.get("ord_amount");
		System.out.println(ord_amount);
		System.out.println(ord_price);
		System.out.println(mem_no);
		String json = param.get("jumun").toString();
		System.out.println(ord_price);
		System.out.println(ord_amount);
		Gson gson = new Gson();
		ArrayList<OrdersDetailVo> list = gson.fromJson(json,new TypeToken<ArrayList<OrdersDetailVo>>(){}.getType());
		
		int result=dao.insertJumun(mem_no,ord_price,ord_amount,list);
		
		
		

		
		
		/*
		 * ArrayList<OrdersDetailVo> list= jumun.getJumun(); OrdersDetailVo od = new
		 * OrdersDetailVo(); for(OrdersDetailVo b : list) {
		 * od.setDet_amount(b.getDet_amount()); od.setDet_price(b.getDet_price());
		 * od.setDet_rental(b.getDet_rental()); od.setDet_return(b.getDet_return()); re
		 * ++; }
		 * 
		 * 
		 * 
		 * String mem_no = jumun.getMem_no(); int amount=jumun.getOrd_amount(); int
		 * price=jumun.getOrd_price(); System.out.println(mem_no);
		 * 
		 * System.out.println(amount); System.out.println(price);
		 */
		 
	
		return re;
	}
	//주문상세 리스트
	@ResponseBody
	@RequestMapping("/ordersList.do")
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