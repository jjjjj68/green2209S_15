package com.spring.green2209S_15;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	
	@RequestMapping(value = "/reservation", method=RequestMethod.GET)
	public String reservationGet() {
		
		return "reservation/reservation";
	}
}