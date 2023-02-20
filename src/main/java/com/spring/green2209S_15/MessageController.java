package com.spring.green2209S_15;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MessageController {
	@RequestMapping(value="/msg/{msgFlag}", method=RequestMethod.GET)
	public String msgGet(@PathVariable String msgFlag, Model model,
		@RequestParam(value="mid", defaultValue = "", required = false) String mid,
		@RequestParam(value="flag", defaultValue = "", required = false) String flag) {
	
		if(msgFlag.equals("LoginOk")) {
			model.addAttribute("msg", mid + "님 로그인 되었습니다.");
			model.addAttribute("url", "member/main");
		}
		else if(msgFlag.equals("LoginNo")) {
			model.addAttribute("msg", "아이디/비밀번호을 확인해주세요.");
			model.addAttribute("url", "member/login");
		}
		else if(msgFlag.equals("JoinOk")) {
			model.addAttribute("msg", "회원가입 되었습니다.");
			model.addAttribute("url", "member/main");
		}
		else if(msgFlag.equals("JoinNo")) {
			model.addAttribute("msg", "기입 사항을 다시한번 확인해주세요.");
			model.addAttribute("url", "member/login");
		}
		else if(msgFlag.equals("logout")) {
			model.addAttribute("msg", mid + "님 로그아웃 되었습니다.");
			model.addAttribute("url", "member/login");
		}
		
		
		
		return "include/message";
	}
}
