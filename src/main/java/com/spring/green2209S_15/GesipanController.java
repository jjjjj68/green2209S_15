package com.spring.green2209S_15;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.green2209S_15.pagination.PageProcess;
import com.spring.green2209S_15.pagination.PageVO;
import com.spring.green2209S_15.service.GesipanService;
import com.spring.green2209S_15.service.MemberService;
import com.spring.green2209S_15.vo.GesipanVO;
import com.spring.green2209S_15.vo.MemberVO;

@Controller
@RequestMapping("/gesipan")
public class GesipanController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	GesipanService gesipanService;
	
	@Autowired
	PageProcess pageProcess;
	
	@RequestMapping(value = "/gesipan", method=RequestMethod.GET)
	public String gesipanGet(Model model,
		@RequestParam(name="pag", defaultValue = "1", required = false) int pag,
		@RequestParam(name="pageSize", defaultValue = "5", required = false) int pageSize) {
		PageVO pageVo = pageProcess.totRecCnt(pag, pageSize, "gesipan", null, null);
		
		List<GesipanVO> vos = gesipanService.getGesipan(pageVo.getStartIndexNo(), pageSize);
		
		model.addAttribute("vos", vos);
		model.addAttribute("pageVo", pageVo);
		
		return "gesipan/gesipan";
	}
	
	@RequestMapping(value = "/input", method=RequestMethod.GET)
	public String inputGet(Model model, HttpSession session/* , Integer pag, int pageSize */) {
		String mid = (String) session.getAttribute("sMid");
		MemberVO vo = memberService.getMemberIdcheck(mid);
		
		//model.addAttribute("pag", pag);
		//model.addAttribute("pageSize", pageSize);
		
		return "gesipan/input";
	}
	
	@RequestMapping(value = "/input", method = RequestMethod.POST)
	public String inputPost(GesipanVO vo) {
		
		int res = gesipanService.setGesipanInput(vo);
		
		if(res == 1) return "redirect:/msg/gesipanInputOk";
		else return "redirect:/msg/gesipanInputNo";
	}
	
	
	
}
