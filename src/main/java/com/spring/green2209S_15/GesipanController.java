package com.spring.green2209S_15;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/gesipan")
public class GesipanController {
	@RequestMapping(value = "/gesipan", method=RequestMethod.GET)
	public String gesipanGet() {
		return "gesipan/gesipan";
	}
	
	@RequestMapping(value = "/input", method=RequestMethod.GET)
	public String inputGet() {
		return "gesipan/input";
	}
}
