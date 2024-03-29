package com.bit.dife03.controller;

import java.util.HashMap;

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

import com.bit.dife03.dao.PilotDao;
import com.bit.dife03.vo.PilReservationVo;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class PilotController {
	//한페이지 당 게시글 수
	int pageRecord = 5;
	
	//총 게시글 수
	int totalRecord = 0;
	
	//전체페이지수 (default=1)
	int totalPage = 1;
	
	@Autowired
	private PilotDao dao;

	public void setDao(PilotDao dao) {
		this.dao = dao;
	}

	@RequestMapping("/pilot")
	public void pilot() {
		
	}
	
	//상담확인 창
	@RequestMapping(value = "/pilot_reservationPop", method = RequestMethod.GET)
	public ModelAndView pilot_reservationPop(int con_no, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		HashMap map = new HashMap();
		map.put("mem_no", session.getAttribute("mem_no"));
		map.put("con_no", con_no);
		mav.addObject("vo", dao.sel_pilResOne(map));
		return mav;
	}

	//내글관리 페이지 이동-> get post 로 나누어 ?
	@RequestMapping("/mypage_board")
	public void mypage_board() {
		
	}
	
	//내글관리-파일럿상담 
	@ResponseBody
	@RequestMapping("/board_select")
	public String sel_pilRes(HttpSession session) {
		String str = "";
		HashMap map = new HashMap();
		map.put("mem_no", session.getAttribute("mem_no"));
		map.put("con_no", null);
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(dao.sel_pilRes(map));
			System.out.println("mypage_board:"+str);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("에러"+e.getMessage());
		}
		return str;
	}
	
//	//예약상담 select(jstl)
//	@RequestMapping("/mypage_board")
//	public ModelAndView sel_pilRes(HttpSession session) {
//		ModelAndView mav = new ModelAndView();
//		String mem_no = (String) session.getAttribute("mem_no");
//		mav.addObject("list", dao.sel_pilRes(mem_no));
//		return mav;
//	}

	//예약상담 팝업창
	@RequestMapping(value = "/pilot_popup", method = RequestMethod.GET)
	public ModelAndView pilot_popup(String startDate, String endDate, String list_no, int con_sort, String con_loc) {
		ModelAndView mav = new ModelAndView();
		System.out.println("시작:"+startDate+"끝:"+endDate);
		System.out.println(list_no+","+con_sort+","+con_loc);
		mav.addObject("startDate", startDate);
		mav.addObject("endDate", endDate);
		mav.addObject("list_no", list_no);
		mav.addObject("con_sort", con_sort);
		mav.addObject("con_loc", con_loc);
		return mav;
	}
	
	//예약상담 insert
	@ResponseBody
	@RequestMapping(value = "/pilot_popup", method = RequestMethod.POST)
	public String pilot_popup(@RequestBody PilReservationVo vo) {
		String str = "";
		int no = dao.sel_nextNo();
		System.out.println("PR000"+no);
		vo.setCon_no(no);
		System.out.println(vo.toString());
		int re = dao.insertPilRes(vo);
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(re);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return str;
	}
	
	//파일럿 전체 리스트 출력(ajax)
		@ResponseBody
		@RequestMapping(value = "/selectPil_list", method = RequestMethod.GET)
		public String selectPil_list(String category, String location, @RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM) {
			String str = "";
			HashMap map = new HashMap();
			map.put("category", category);
			map.put("location", location);
			
			totalRecord = dao.sel_pil_cnt(map);
			totalPage = (int) Math.ceil(totalRecord/(double)pageRecord);
			System.out.println("전체 페이지수: "+totalPage);
			System.out.println("pageNUM:"+pageNUM);
			
			//해당페이지의 시작글번호, 끝번호
			int start = (pageNUM-1)*pageRecord+1;
			int end = start+pageRecord-1;
			
			map.put("start", start);
			map.put("end", end);
			
			System.out.println(category+","+location+", start: "+start+", end: "+end);
			try {
				ObjectMapper mapper = new ObjectMapper();
				str = mapper.writeValueAsString(dao.selectPil_list(map));
				System.out.println("controller"+str);
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("예외발생"+e.getMessage());
			}
			return str;
		}
		
		//파일럿 상세페이지
		@RequestMapping("/pilotDetail")
		public ModelAndView pilotDetail(HttpServletRequest request) {
			ModelAndView mav = new ModelAndView();
			int info = Integer.parseInt(request.getParameter("info"));
			mav.addObject("info",dao.sel_pil_detail(info));
			//System.out.println("번호:"+info);
			return mav;
		}
	
//	//파일럿 목록페이지+페이징처리
//	@RequestMapping("/pilot")
//	public ModelAndView paging(@RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM,
//								@RequestParam(value = "category", defaultValue = "2") String category,
//								@RequestParam(value = "location", defaultValue = "선택") String location,
//								HttpSession session) {
//		
//		ModelAndView mav = new ModelAndView();
//		HashMap map = new HashMap();
//		
//		System.out.println("지역:"+location);
//		System.out.println("카테고리:"+category);
//		
//		mav.addObject("category", category);
//		mav.addObject("location", location);
//		session.setAttribute("category", category);
//		session.setAttribute("location", location);
//		
//		map.put("category", category);
//		map.put("location", location);
//		
//		totalRecord = dao.sel_pil_cnt(map);
//		totalPage = (int) Math.ceil(totalRecord/(double)pageRecord);
//		System.out.println("전체 페이지수"+totalPage);
//		
//		//해당페이지의 시작글번호, 끝번호
//		int start = (pageNUM-1)*pageRecord+1;
//		int end = start+pageRecord-1;
//		
//		System.out.println("start: "+start);
//		System.out.println("end: "+end);
//		
//		map.put("start", start);
//		map.put("end", end);
//		
//		mav.addObject("list", dao.sel_pil(map));
//		
//		//보고있는 페이지의 번호가 전체 페이지보다 클 떄
//		if(totalPage < pageNUM) {
//			pageNUM = totalPage;
//		}
//		//시작페이지 및 끝페이지 번호 구하기(1~5/6~10/... 5단위로 보여주기)
//		int pageCount = 5;
//		int startPage = ((pageNUM-1)/pageCount)*pageCount+1;
//		int endPage = startPage+pageCount-1;
//		//끝페이지가 총페이지 수보다 크게 계산될 때
//		if(endPage > totalPage) {
//			endPage = totalPage;
//		}
//	
//		String page = "";
//		
//		if(startPage > 1) {
//			page = page +"<a href='pilot?category="+category+"&location="+location+"&pageNUM="+(pageNUM-1)+"' class='link-page-prev'>이전</a>";
//		}
//		for (int i = startPage; i <= endPage; i++) {
//			page = page + "<a href='pilot?category="+category+"&location="+location+"&pageNUM="+i+"' class='link-page'>"+i+"</a>";
//		}
//		if (endPage < totalPage) {
//			page = page + "<a href='pilot?category="+category+"&location="+location+"&pageNUM="+(endPage+1)+"' class='link-page-next'>다음</a>";
//		}
//		mav.addObject("page", page);
//		
//		return mav;
//	}
}
