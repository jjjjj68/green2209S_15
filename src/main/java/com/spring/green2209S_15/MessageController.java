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
      else if(msgFlag.equals("IdcheckNo")) {
    	  model.addAttribute("msg", "중복된 아이디입니다.");
    	  model.addAttribute("url", "member/join");
      }
      else if(msgFlag.equals("JoinOk")) {
         model.addAttribute("msg", "회원가입 되었습니다.");
         model.addAttribute("url", "member/login");
      }
      else if(msgFlag.equals("JoinNo")) {
         model.addAttribute("msg", "기입 사항을 다시한번 확인해주세요.");
         model.addAttribute("url", "member/join");
      }
      else if(msgFlag.equals("logout")) {
         model.addAttribute("msg", mid + "님 로그아웃 되었습니다.");
         model.addAttribute("url", "member/login");
      }
      else if(msgFlag.equals("loginGo")) {
    	  model.addAttribute("msg", "로그인 이후 이용해 주세요.");
    	  model.addAttribute("url", "member/login");
      }
      else if(msgFlag.equals("gesipanInputOk")) {
    	  model.addAttribute("msg", "게시글이 정상적으로 등록되었습니다.");
    	  model.addAttribute("url", "gesipan/gesipan");
      }
      else if(msgFlag.equals("gesipanInputNo")) {
    	  model.addAttribute("msg", "내용을 기입해 주세요.");
    	  model.addAttribute("url", "gesipan/input");
      }
      else if(msgFlag.equals("UpdateOk")) {
    	  model.addAttribute("msg", "게시글이 수정되었습니다.");
    	  model.addAttribute("url", "gesipan/gesipan");
      }
      else if(msgFlag.equals("DeleteOk")) {
    	  model.addAttribute("msg", "게시글이 삭제되었습니다.");
    	  model.addAttribute("url", "gesipan/gesipan");
      }
      
		return "include/message";
	}
}
