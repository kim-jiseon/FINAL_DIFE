package com.bit.dife03.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
		
	@RequestMapping(value = "/drone", method = RequestMethod.GET)
	public ModelAndView sel_droAll(@RequestParam(value = "search", defaultValue = "")String search, 			
			@RequestParam(value = "calendar", defaultValue = "")String calendar,
			@RequestParam(value = "sub_series_02", defaultValue = "")String sub_series_02,
			@RequestParam(value = "sub_price", defaultValue = "") String sub_price,
			@RequestParam(value = "sortDro", defaultValue = "") String sortDro,
			@RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM,			
			HttpSession session) {
		
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
		map.put("sortDro", sortDro);
		
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
		
		System.out.println("시작 레코드 : "+start);
		System.out.println("마지막 레코드 : "+end);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.sel_droAll(map));
		mav.addObject("pageStr", pageStr);
		return mav;


	}
/*		

	// 모델앤뷰로 변경하기
	@ResponseBody
	@RequestMapping("/sel_droAll")
	public String sel_droAll() {
		String str_dro = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str_dro = mapper.writeValueAsString(dao.sel_droAll());
			System.out.println(str_dro);
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return str_dro;
	}

	// 페이징처리 : 드랍박스.스프링.0904	
	@ResponseBody
	@RequestMapping("get_droCount")
	public String get_droCount() {
		
		String str_dro = "";
		str_dro = dao.get_droCount()+"";
		return str_dro;
	}
	
	@ResponseBody    
	@RequestMapping("get_droCountList")

	}	
/*
	@RequestMapping(value = "get_droCountList")
>>>>>>> branch 'master' of https://github.com/kim-jiseon/FINAL_DIFE.git
=======
	}	
/*
	@RequestMapping(value = "get_droCountList")
>>>>>>> branch 'master' of https://github.com/kim-jiseon/FINAL_DIFE.git
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
