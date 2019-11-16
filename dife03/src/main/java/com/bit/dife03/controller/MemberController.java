package com.bit.dife03.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dife03.CEncrypt;
import com.bit.dife03.dao.MemberDao;
import com.bit.dife03.vo.MemberVo;

import kr.co.youiwe.webservice.ServiceSMSSoapProxy;


@Controller
public class MemberController {

	@Autowired
	private MemberDao dao;

	public void setDao(MemberDao dao) {
		this.dao = dao;
	}
	
	//로그인페이지 이동
	@RequestMapping(value = "/signIn", method = RequestMethod.GET)
	public void signInInsertForm(HttpServletRequest request) {
		String referer = request.getHeader("referer");
		System.out.println(referer);
		request.getSession().setAttribute("redirectURI", referer);
	}
	//로그인시
	@RequestMapping(value = "/signIn", method = RequestMethod.POST)
	public ModelAndView signInSubmit(String mem_id, String mem_pwd, HttpSession session) {
		//로그인시 이전페이지로 돌아가기: referer
		String referer = (String) session.getAttribute("redirectURI");
		String URI = referer.substring(referer.lastIndexOf("/")+1);
		System.out.println("URI"+URI);
		if(URI.equals("signIn")){
			URI = "main";
		}
		ModelAndView mav = new ModelAndView("redirect:/"+URI);

		int re = dao.isMember(mem_id, mem_pwd);
		
		if(re != 1) {
			mav.setViewName("redirect:/signIn");
		}
		else {
			MemberVo memVo = dao.sel_member(mem_id);
			session.setAttribute("mem_name", memVo.getMem_name());
			session.setAttribute("mem_no", memVo.getMem_no());
			session.setAttribute("mem_id", mem_id);
			session.setAttribute("mem_pwd", mem_pwd);
		}
		return mav;
	}
	//로그아웃
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String mem_id = (String) session.getAttribute("mem_id");
		System.out.println(mem_id);
		String msg = "";
		if(mem_id != "" && mem_id != null) {
			session.invalidate();
			mav.setViewName("redirect:/main");
		}else {
			
		}
		return mav;
	}


	// 이용약관 이동
	@RequestMapping("/policy.do")
	public void policy() {
		
	}
	// 아이디 중복 컨트롤러
	@ResponseBody
	@RequestMapping(value = "/member/idCheck", method = RequestMethod.GET)
	public int idCheck(@RequestParam("mem_id") String mem_id) {
		return dao.idCheck(mem_id);
	}
	
	//회원가입페이지 이동
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public void signUpinsertForm() {
		
	}
	
	// 회원가입
	@ResponseBody
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public ModelAndView signUpInsertSubmit(MemberVo vo, HttpSession session, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("redirect:/signIn");
		
		String path = request.getRealPath("img");
		System.out.println(path);
		MultipartFile file = vo.getUpload();
		String mem_fname = file.getOriginalFilename();
		//회원사진을 등록하는 곳이 없는데 어떻게??
		vo.setMem_fname(mem_fname);

		try {
			byte data[] = file.getBytes();
			FileOutputStream fos = new FileOutputStream(path+"/"+mem_fname);
			fos.write(data);
			fos.close();
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		String msg = "";
		int re = dao.in_member(vo);
		if(re != 1) {
			msg = "회원 등록에 실패했습니다.";
		}
		session.setAttribute("msg", msg);
		return mav;
	}
	
	// 문자 인증
	@ResponseBody
	@RequestMapping("/sendAuthNumber")
	public String sendAuthNumber(String mem_tel) {
		String str = "";
		
		Random random = new Random();
		for(int i = 1; i <= 6; i++) {
			str += random.nextInt(10)+"";
		}
		System.out.println(str);
		
		String smsID= "rola";	
		String smsPW="bit123400";
		
		ServiceSMSSoapProxy sendsms = new ServiceSMSSoapProxy();
		try{
		String senderPhone= "01025598279";
		String receivePhone= mem_tel;
		String smsContent= "다음의 인증번호를 입력해주세요.["+str+"]";
		String test1 = (smsID+smsPW+receivePhone);
		CEncrypt encrypt = new CEncrypt("MD5",test1);
		java.lang.String send=sendsms.sendSMS(smsID,encrypt.getEncryptData(), senderPhone, receivePhone, smsContent);
 		System.out.println("결과코드:"+send);
		}catch(Exception e){
		System.out.println("Exception in main:" +e);
		}
		return str;
	}
}
