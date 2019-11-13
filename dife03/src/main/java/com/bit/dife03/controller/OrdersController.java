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
	@RequestMapping("/ordersList.do")
	public ModelAndView paging(@RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM,
								@RequestParam(value = "month", defaultValue = "2") int month ,
								HttpSession session,
								HttpServletRequest req) {
		
		ModelAndView mav = new ModelAndView();
		HashMap map = new HashMap();
		String mem_id = null;
		System.out.println("지역:"+month);
		System.out.println("카테고리:"+pageNUM);
		mem_id =(String)req.getAttribute("mem_id");
		if(mem_id !=null)
		{
			mav.addObject("category", month);
			session.setAttribute("category", month);
			map.put("mem_id",mem_id);
			map.put("month", month);
			
			totalRecord = dao.mem_ord_max(mem_id);
			totalPage = (int) Math.ceil(totalRecord/(double)pageRecord);
			System.out.println("전체 페이지수"+totalPage);
			
			//해당페이지의 시작글번호, 끝번호
			int start = (pageNUM-1)*pageRecord+1;
			int end = start+pageRecord-1;
			
			System.out.println("start: "+start);
			System.out.println("end: "+end);
			
			map.put("start", start);
			map.put("end", end);
			
			mav.addObject("list", dao.mem_ord_list(map));
			
			//보고있는 페이지의 번호가 전체 페이지보다 클 떄
			if(totalPage < pageNUM) {
				pageNUM = totalPage;
			}
			//시작페이지 및 끝페이지 번호 구하기(1~5/6~10/... 5단위로 보여주기)
			int pageCount = 5;
			int startPage = ((pageNUM-1)/pageCount)*pageCount+1;
			int endPage = startPage+pageCount-1;
			//끝페이지가 총페이지 수보다 크게 계산될 때
			if(endPage > totalPage) {
				endPage = totalPage;
			}
		
			String page = "";
			
			if(startPage > 1) {
				page = page +"<a href='ordersList.do?category="+month+"&pageNUM="+(pageNUM-1)+"' class='link-page-prev'>이전</a>";
			}
			for (int i = startPage; i <= endPage; i++) {
				page = page + "<a href='ordersList.do?category="+month+"&pageNUM="+i+"' class='link-page'>"+i+"</a>";
			}
			if (endPage < totalPage) {
				page = page + "<a href='ordersList.do?category="+month+"&pageNUM="+(endPage+1)+"' class='link-page-next'>다음</a>";
			}
			mav.addObject("page", page);
		}
		return mav;
	}
	@RequestMapping("/ordersDetail.do")
	public ModelAndView ordersDetail(HttpServletRequest request,String ord_no) {
		System.out.println("컨트롤러진입");
		 ModelAndView mav = new ModelAndView();
		 String mem_id = null;
		/* mem_id= (String)request.getAttribute("mem_id"); */
		 mem_id = "hong";
		 ord_no = "O000067";
		 HashMap map = new HashMap();
		 if(mem_id != null && ord_no !=null)
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
	@ResponseBody
	@RequestMapping("/delBasket.do")
	public String allDelBas(HttpServletRequest request)
	{
		String mem_id = (String)request.getAttribute("mem_id");
		String str= "";
		ObjectMapper ob = new ObjectMapper();
		try {
		str +=	ob.writeValueAsString(dao.allDelBas(mem_id));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return str;
	}
	
}