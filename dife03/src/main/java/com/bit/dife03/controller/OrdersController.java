package com.bit.dife03.controller;



import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.client.support.HttpRequestWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dife03.dao.OrdersDao;
import com.bit.dife03.vo.BasketVo;
import com.bit.dife03.vo.JumunVo;
import com.bit.dife03.vo.OrdersDetailVo;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;





@Controller
public class OrdersController {
		//한페이지 당 게시글 수
		int pageRecord = 5;
		
		//총 게시글 수
		int totalRecord = 0;
		
		//전체페이지수 (default=1)
		int totalPage = 1;
	
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
	     @RequestParam(value = "checkList[]") List<String> chArr, BasketVo bas,HttpServletRequest request) {
		/*
		 * MemberVo member = (MemberVo)session.getAttribute("mem_id"); String mem_id =
		 * member.getMem_id();
		 */
		String member1= null;
			member1 = (String)request.getAttribute("mem_id");

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
	public int insertJumun(@RequestBody Map<String, Object> param) throws Exception
	{
		int re=0;
		
		String mem_no = (String)param.get("mem_no");
		int ord_price=(int)param.get("ord_price");
		int ord_amount=(int)param.get("ord_amount");
		String json = param.get("jumun").toString();
		Gson gson = new Gson();
		ArrayList<OrdersDetailVo> list = gson.fromJson(json,new TypeToken<ArrayList<OrdersDetailVo>>(){}.getType());
		JumunVo jumun = new JumunVo();
		jumun.setJumun(list);
		jumun.setMem_no(mem_no);
		jumun.setOrd_amount(ord_amount);
		jumun.setOrd_price(ord_price);
		re=dao.insertJumun(jumun);
		return re;
	}
	//주문상세 리스트
	@ResponseBody
	@RequestMapping("/ordersDetailList.do")
	public String listDetailOrders(String mem_id)
	{	
		String str="";
		
		if(mem_id != null)
		{
		
		ObjectMapper ob = new ObjectMapper();
		try {
		str =	ob.writeValueAsString(dao.ordersList(mem_id));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		}
		return str;
	}
	@ResponseBody
	@RequestMapping(value = "/ordersList.do", method = RequestMethod.GET)
	public String selectOrdList(HttpServletRequest req,@RequestParam(value = "month", defaultValue = "0") int month,@RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM) {
		String str = "";
		String mem_id=null;
		HashMap map = new HashMap();
		map.put("category", month);
		System.out.println(month);
		mem_id=(String)req.getAttribute("mem_id");
		if(mem_id != null)
		{
			map.put("mem_id",mem_id);
			totalRecord = dao.mem_ord_max(mem_id);
			totalPage = (int) Math.ceil(totalRecord/(double)pageRecord);
			System.out.println("전체 페이지수: "+totalPage);
			System.out.println("pageNUM:"+pageNUM);
			
			//해당페이지의 시작글번호, 끝번호
			int start = (pageNUM-1)*pageRecord+1;
			int end = start+pageRecord-1;
			
			map.put("start", start);
			map.put("end", end);
			
			System.out.println(month+", start: "+start+", end: "+end);
			try {
				ObjectMapper mapper = new ObjectMapper();
				str = mapper.writeValueAsString(dao.mem_ord_list(map));
				System.out.println("controller"+str);
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("예외발생"+e.getMessage());
			}
		}
		return str;
	}
	@RequestMapping("/ordersDetail.do")
	public ModelAndView ordersDetail(HttpServletRequest request, String ord_no) {
		System.out.println("컨트롤러진입");
		 ModelAndView mav = new ModelAndView();
		 String mem_id = null;
		 mem_id= (String)request.getAttribute("mem_id");
		 ord_no = "O000067";
		 HashMap map = new HashMap();
		 if(mem_id != null && ord_no != null)
		 {
		 map.put("mem_id", mem_id);
		 map.put("ord_no", ord_no);
		 mav.addObject("detailList", dao.ordersDetail(map));
		 mav.addObject("orderList",dao.mem_order(map));
		 mav.addObject("ord_no", dao.mem_order_no(map));
		 }
		 return mav;
	}
	//장바구니 전체 삭제 및 주문 번호 0 -> 1로 변경
	//원래 결제시에 0->1로 변경해야하는데 시간 관계상 일단 주문시 결제완료로 변경 업데이트..
	@ResponseBody
	@RequestMapping("/delBasket.do")
	public int allDelBas(HttpServletRequest request,String mem_id)
	{	int r= 0;
		/*
		 * String mem_id=null; mem_id = (String)request.getAttribute("mem_id");
		 */
		System.out.println("회원 아이디:"+mem_id);
		if(mem_id !=null)
		{
			r= dao.allDelBas(mem_id);
		}
		System.out.println(r);
		return r;
	}
	
}