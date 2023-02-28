package com.spring.green2209S_15;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
		Cookie[] cookies = request.getCookies();
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("cMid")) {
				request.setAttribute("mid", cookies[i].getValue());
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

		MemberVO vo = memberService.getMemberIdcheck(mid);
		
		if (vo != null && vo.getUserDel().equals("NO") && passwordEncoder.matches(pwd, vo.getPwd())) {
		    String strLevel = "";
		    if (vo.getLevel() == 0) strLevel = "관리자";
		    else if (vo.getLevel() == 1) strLevel = "운영자";
		    else if (vo.getLevel() == 2) strLevel = "정회원";

		    session.setAttribute("sLevel", vo.getLevel());
		    session.setAttribute("sStrLevel", strLevel);
		    session.setAttribute("sMid", vo.getMid());

		    if (idCheck.equals("on")) {
		        Cookie cookie = new Cookie("cMid", mid);
		        cookie.setMaxAge(60 * 60 * 24 * 7);
		        response.addCookie(cookie);
		    } else {
		        Cookie[] cookies = request.getCookies();
		        for (int i = 0; i < cookies.length; i++) {
		            if (cookies[i].getName().equals("cMid")) {
		                cookies[i].setMaxAge(0);
		                response.addCookie(cookies[i]);
		                break;
		            }
		        }
		    }
		    
		    String pwdBycrypt = passwordEncoder.encode(idCheck);
		    vo.setPwd(pwdBycrypt);
		    
		    return "redirect:/msg/LoginOk?mid=" + mid;
		} else {
		    return "redirect:/msg/LoginNo";
		}
	}
	
	@RequestMapping(value = "/join", method=RequestMethod.GET)
	public String joinGet() {
		
		return "member/join";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPost(MemberVO vo) {
		//System.out.println("vo : " + vo);
		if(memberService.getMemberIdcheck(vo.getMid()) != null ) {
			return "redirect:/msg/IdcheckNo";
		}
		vo.setPwd(passwordEncoder.encode(vo.getPwd()));
		
		int res = memberService.setJoinOk(vo);
		
		//System.out.println("res :"+ res);
		if(res == 1) return "redirect:/msg/JoinOk";
		else return "redirect:/msg/JoinNo";
	}
	
	@ResponseBody
	@RequestMapping(value = "/IdCheck", method = RequestMethod.POST)
	public String IdCheckPost(String mid) {
		String res = "0";	
		MemberVO vo = memberService.getMemberIdcheck(mid);
		
		if(vo != null) res = "1";
		
		return res;
		
	}
	
	@RequestMapping(value = "/main", method=RequestMethod.GET)
	public String memberMainGet(HttpSession session, Model model) {
		String mid = (String)session.getAttribute("sMid");
		MemberVO vo = memberService.getMemberIdcheck(mid);
		
		model.addAttribute("vo", vo);
		return "member/main";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logoutGet(HttpSession session) {
		String mid = (String) session.getAttribute("sMid");
		session.invalidate();
		return "redirect:/msg/logout?mid="+mid;
	}

	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String mypageGet(MemberVO vo) {
		
		
		return "member/mypage";
	}
	@RequestMapping(value="/mypage", method=RequestMethod.POST)
	public String mypagePost(MemberVO vo, Model model) {
		
		model.addAttribute("vo",vo);
		
		return "member/mypage";
	}
}