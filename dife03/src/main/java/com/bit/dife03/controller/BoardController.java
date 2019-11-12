package com.bit.dife03.controller;

import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dife03.dao.BoardDao;
import com.bit.dife03.vo.BoardVo;
import com.bit.dife03.vo.MemberVo;

@Controller
public class BoardController {
	
	@Autowired
	private BoardDao dao;
	
	public void setDao(BoardDao dao) {
		this.dao = dao;
	}

	@RequestMapping("/board")
	public ModelAndView list(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.listAll());
		
		return mav;
	}
	
	@RequestMapping(value = "/board_insert", method = RequestMethod.GET)
	public ModelAndView insertForm(@RequestParam(value = "boa_no", defaultValue = "0") int boa_no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("boa_no", boa_no);
		return mav;
	}
	@RequestMapping(value = "/board_insert", method = RequestMethod.POST)
	public ModelAndView insertSubmit(BoardVo vo, HttpServletRequest request, HttpSession session) {
		ModelAndView mav= new ModelAndView("redirect:/board");
		String path = request.getRealPath("img");
		
		int boa_no = dao.getNextNo();
		int boa_ref = boa_no;
		int boa_level = 0;
		int boa_step = 0;
		
		int pno = vo.getBoa_no();
		if(pno != 0) {
			BoardVo b = dao.getBoard(boa_no);
			boa_ref = b.getBoa_ref();
			boa_step = b.getBoa_step();
			boa_level = b.getBoa_level();
			dao.updateStep(boa_ref, boa_step);
			boa_step++;
			boa_level++;
		}
		vo.setBoa_no(boa_no);
		vo.setBoa_ref(boa_ref);
		vo.setBoa_level(boa_level);
		vo.setBoa_step(boa_step);
		
		MultipartFile multi = vo.getUpload();
		String boa_fname = multi.getOriginalFilename();
		vo.setBoa_fname(boa_fname);
		
		try {
			byte [] data = multi.getBytes();			
			FileOutputStream fos = new FileOutputStream(path +"/"+boa_fname);
			fos.write(data);
			fos.close();
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		
		String mem_no = (String) session.getAttribute("mem_no");
		vo.setMem_no(mem_no);
		int re = dao.insert(vo);
		System.out.println(mem_no);
		String msg = "";
		if(re != 1) {
			msg = "게시물 등록에 실패하였습니다.";
			mav.addObject("msg", msg);
		}
		
		return mav;
	}
}
