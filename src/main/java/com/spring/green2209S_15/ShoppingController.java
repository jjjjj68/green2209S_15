package com.spring.green2209S_15;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/shopping")
public class ShoppingController {
	@RequestMapping(value = "/shopping", method=RequestMethod.GET)
	public String shoppingGet() {
		return "shopping/shopping";
	}
}
