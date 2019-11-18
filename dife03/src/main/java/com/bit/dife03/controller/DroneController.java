package com.bit.dife03.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dife03.dao.DroneDao;
import com.bit.dife03.vo.BasketVo;
import com.bit.dife03.vo.DroneVo;
import com.bit.dife03.vo.JumunVo;
import com.bit.dife03.vo.OrdersDetailVo;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

@Controller
public class DroneController {
	//한페이지 당 게시글 수
	int pageRecord = 5;
	
	//총 게시글 수
	int totalRecord = 0;
	
	//전체페이지수 (default=1)
	int totalPage = 1;
	
	@Autowired
	private DroneDao dao;	
	public void setDao(DroneDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/drone")
	public ModelAndView sel_dro() {
		HashMap map = new HashMap();
		
		ModelAndView mav = new ModelAndView();
		List<DroneVo> list = dao.sel_droAll(map);
		mav.addObject("list", list);
		return mav;
	}
	
	/* 전체 목록 불러오기 */
	@ResponseBody
	@RequestMapping("/droAll")
	public String sel_droAll(HttpSession session, String series, String price) {
	String str = "";
	System.out.println(series+","+price);
	HashMap map = new HashMap();
	int price1 = 0;
	String oper= "";
	if(price.equals("10만원 이하")) {
		price1 = 100000;
		oper = "<=";
	}else if(price.equals("10만원 ~ 20만원")) {
		price1 = 150000;
	}else if(price.equals("20만원 이상")){
		price1 = 200000;
		oper = ">=";
	}
	System.out.println("가격:"+price1);
	map.put("series", series);
	map.put("price", price);
	map.put("price1", price1);
	map.put("oper", oper);
	
	//DroneVo vo = new DroneVo();
	//int series = Integer.parseInt(vo.getDro_series());
	//System.out.println(series);
	ObjectMapper mapper = new ObjectMapper();
	try {
		str = mapper.writeValueAsString(dao.sel_droAll(map));
	}catch (Exception e) {
		// TODO: handle exception
		System.out.println(e.getMessage());
	    }
	    return str;
	}
	
	/* 드론 전체 리스트 무한스크롤 출력
	*/
	
	/* 상세페이지 */
	@RequestMapping("/droneDetail")
	public ModelAndView sel_droDetail(String dro_no, HttpServletRequest request) {
		System.out.println("dro no:"+dro_no);
		ModelAndView mav = new ModelAndView();
		String dtInfo = request.getParameter("dro_no");
		mav.addObject("dtInfo", dao.sel_droDetail(dro_no));
		//System.out.println("상세번호 : "+dtInfo);
		return mav;
	}
	
	/* 장바구니 */
	@ResponseBody
	@RequestMapping("/droBasket")
	public int in_droBasket(@RequestParam(value = "bas_return") String bas_return,
							@RequestParam(value = "bas_rental") String bas_rental,
							@RequestParam(value = "bas_price") int bas_price,
							@RequestParam(value = "bas_amount") int bas_amount,
							String mem_id,
							String dro_no){
		int re = 0;
		System.out.println(bas_return);
		System.out.println(bas_rental);
		System.out.println(bas_price);
		System.out.println(bas_amount);
		System.out.println(mem_id);
		System.out.println(dro_no);
		HashMap map = new HashMap();
		bas_price = bas_price * bas_amount;
		if(mem_id != null && dro_no != null)
		{	
			map.put("bas_return", bas_return);
			map.put("bas_rental", bas_rental);
			map.put("bas_price", bas_price);
			map.put("bas_amount", bas_amount);
			map.put("mem_id", mem_id);
			map.put("dro_no",dro_no);
			re = dao.insertBasket(map);
		}
		return re;
	}
	
	/* 주문 */
	@ResponseBody
	@RequestMapping("/droOrder")
	public int in_orders(@RequestParam(value = "det_return") String det_return,
							@RequestParam(value = "det_rental") String det_rental,
							@RequestParam(value = "ord_price") int ord_price,
							@RequestParam(value = "det_amount") int det_amount,
							String mem_id,
							String dro_no){
		int re = 0;
		System.out.println(det_return);
		System.out.println(det_rental);
		System.out.println(ord_price);
		System.out.println(det_amount);
		System.out.println(mem_id);
		System.out.println(dro_no);
		HashMap map = new HashMap();
		ord_price = ord_price * det_amount;
		if(mem_id != null && dro_no != null)
		{	
			map.put("det_return", det_return);
			map.put("det_rental", det_rental);
			map.put("ord_price", ord_price);
			map.put("det_amount", det_amount);
			map.put("mem_id", mem_id);
			map.put("dro_no",dro_no);
			re = dao.insertOrder(map);
		}
		return re;
	}

	/*
	@ResponseBody
	@RequestMapping("/droDtCon")
	public String sel_droDetail(String dro_no) {
	String str = "";
	ObjectMapper om = new ObjectMapper();
	  
	try {
		str = om.writeValueAsString(dao.sel_droDetail(dro_no));
	}catch (Exception e) {
		// TODO: handle exception
		System.out.println(e.getMessage());
	    }
	    return str;
	}
	*/
	/*
	@ResponseBody
	@RequestMapping(value = "/drone", method = RequestMethod.GET)
	public ModelAndView sel_droAll(@RequestParam(value = "search", defaultValue = "")String search, 			
			@RequestParam(value = "calendar", defaultValue = "")String calendar,
			@RequestParam(value = "sub_series_02", defaultValue = "")String sub_series_02,
			@RequestParam(value = "sub_price", defaultValue = "") String sub_price,
			@RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM,			
			HttpSession session) {
		//@RequestParam(value = "sortDro", defaultValue = "") String sortDro,
		
		HashMap map = new HashMap();
		String keyword = null;
		
		if(session.getAttribute(search) != null) {
			keyword = (String)session.getAttribute(search);
		}
		if(keyword != null && !keyword.equals("")) {
			map.put("calendar", session.getAttribute(calendar));
			map.put("sub_series_02",session.getAttribute(sub_series_02));
			map.put("sub_price", session.getAttribute(sub_price));
			
			session.setAttribute("calendar", calendar);
			session.setAttribute("sub_series_02", sub_series_02);
			session.setAttribute("sub_price", sub_price);
		}
		//map.put("sortDro", sortDro);
		
		totalRecord = dao.get_droCount(map);
		totalPage = (int)Math.ceil( totalRecord/(double)pageSIZE );
		
		String pageStr = "";
		for(int i=1; i<=totalPage; i++) {
			pageStr = pageStr+"<a href='drone.do?pageNUM="+ i +"'>"+ i +"</a>"+"&nbsp;&nbsp;";
		}
		int start = (pageNUM-1) * pageSIZE+1;
		int end = start + pageSIZE-1;
		
		map.put("start", start);
		map.put("end", end);
		
		//System.out.println("시작 레코드 : "+start);
		//System.out.println("마지막 레코드 : "+end);
		
		ModelAndView mav = new ModelAndView();
		
		List<DroneVo> list = dao.sel_droAll(map);
		//System.out.println("시리즈 목록입니다.");
		for(DroneVo d:list) {
			//System.out.println(d.getDro_series());
			String str1 = "";
			String str2 = "";
			
			try {
				str1 = "<li>"+d.getDro_series()+"</li>";
				
				
			}catch (Exception e) {
				// TODO: handle exception
				System.out.println(e.getMessage());
			}
			
		}
		//System.out.println("시리즈 목록 끝입니다.");

		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		return mav;
	}	
	*/
/*
	@RequestMapping(value = "get_droCountList")
	public String get_droCountList(int nowPage, int perPage) {
		String str_dro = "";
		int start = (nowPage-1)*perPage+1;
		int end = start+perPage-1;
		
		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		ObjectMapper mapper = new ObjectMapper();
		try {
			str_dro = mapper.writeValueAsString(dao.droListPage(map));
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return str_dro;
	}
	
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