package com.spring.green2209S_15;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.green2209S_15.service.MemberService;
import com.spring.green2209S_15.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public String loginGet(HttpServletRequest request) {
		Cookie[] coo = request.getCookies();
		for(int i=0; i<coo.length; i++) {
			if(coo[i].getName().equals("cMid")) {
				request.setAttribute("mid", coo[i].getValue());
				break;
			}
		}
		return "member/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(name = "mid", defaultValue = "", required = false)String mid,
			@RequestParam(name = "pwd", defaultValue = "", required = false)String pwd,
			@RequestParam(name = "idCheck", defaultValue = "", required = false)String idCheck) {

		MemberVO vo = memberService.getMemeberIdcheck(mid);
		
		if(vo != null && passwordEncoder.matches(pwd, vo.) && vo.getUserDel().equals("NO")) {
			session.setAttribute("sMid", mid);
			
		if(idCheck.equals("on")) {
			Cookie coo = new Cookie("cMid", mid);
			coo.setMaxAge(60*60*24*1);
			response.addCookie(coo);
		}
		else {
			Cookie[] coo = request.getCookies();
			for(int i=0; i<coo.length; i++) {
				if(coo[i].getName().equals("cMid")) {
					coo[i].setMaxAge(0);
					response.addCookie(coo[i]);
					break;
				}
			}
		}
		return "redirect:/msg/LoginOk?mid="+mid;
	}
	else {
		return "redirect:/msg/LoginNo";
	}
}
}