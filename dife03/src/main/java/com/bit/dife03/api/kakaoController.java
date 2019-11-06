package com.bit.dife03.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class kakaoController {
	
	private kakao_restapi kakao_restapi = new kakao_restapi();
	
	@RequestMapping()
	public String kakaoLogin(@RequestParam("code") String code) {
		return "home";
	}

}
