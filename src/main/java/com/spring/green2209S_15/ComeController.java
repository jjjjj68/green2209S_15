package com.spring.green2209S_15;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/come")
public class ComeController {
	
	@RequestMapping(value = "/come", method=RequestMethod.GET)
	public String comeGet() {
		return "come/come";
	}

}
	