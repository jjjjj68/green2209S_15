package com.spring.green2209S_15;

import java.util.ArrayList;
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
	
	@RequestMapping(value = "/content", method = RequestMethod.GET)
	public String contentGet(Model model, int idx, int pag, int pageSize, HttpSession session) {
		GesipanVO vo = gesipanService.getContent(idx);
		model.addAttribute("vo", vo);
		model.addAttribute("pag", pag);
		model.addAttribute("pageSize", pageSize);
		
		ArrayList<GesipanVO> pnVos = gesipanService.getPrevNext(idx);
		model.addAttribute("pnVos", pnVos);
		
		return "gesipan/content";
	}
	
	
	// 수정하기 폼 호출
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String boardUpdateGet(Model model, int idx, int pag, int pageSize) {
		// 수정창으로 이동시에는 먼저 원본파일에 그림파일이 있다면, 현재폴더(board)의 그림파일을 ckeditor폴더로 복사시켜둔다.
		GesipanVO vo = gesipanService.getContent(idx);
		
		model.addAttribute("vo", vo);
		model.addAttribute("pag", pag);
		model.addAttribute("pageSize", pageSize);
		
		return "gesipan/update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String boardUpdatePost(Model model, GesipanVO vo, int pag, int pageSize) {
		// 수정된 자료가 원본자료와 완전히 동일하다면 수정할 필요가 없기에, DB에 저장된 원본 자료를 불러와서 비교해준다.
		
		// 잘 정비된 vo를 DB에 Update시켜준다.
		gesipanService.setUpdate(vo);
		
		model.addAttribute("flag","?pag="+pag+"&pageSize="+pageSize);
		
		return "redirect:/msg/UpdateOk"; 	
	}
	
	@RequestMapping(value = "/DeleteOk", method = RequestMethod.GET)
	public String boardDeleteOkGet(int idx, int pag, int pageSize, Model model) {
		// 게시글에 사진이 존재한다면 서버에 있는 사진파일을 먼저 삭제한다.
		GesipanVO vo = gesipanService.getContent(idx);
		
		// DB에서 실제로 존재하는 게시글을 삭제처리한다.
		gesipanService.setDeleteOk(idx);
		
		model.addAttribute("flag","?pag="+pag+"&pageSize="+pageSize);
		
		return "redirect:/msg/DeleteOk";
	}
	
}
