package com.spring.green2209S_15;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public String loginGet() {
		return "member/login";
	}
}
