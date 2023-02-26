package com.spring.green2209S_15;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.green2209S_15.service.ReservationService;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	
	@Autowired
	ReservationService reservationService;
	
	
	@RequestMapping(value = "/reservation", method=RequestMethod.GET)
	public String reservationGet() {
		reservationService.getReservation();
		
		return "reservation/reservation";
	}
	
	@RequestMapping(value = "/reservation", method = RequestMethod.POST)
	public String reservationPost(HttpServletRequest request) {
	    String restime = request.getParameter("restime");
	    String courtNum = request.getParameter("courtNum");
	    System.out.println("restime:" + restime);
	    System.out.println("courtNum:" + courtNum);
	    // DB에 저장하는 코드 작성
	    
	    
	    
	    
	    return "";
	}
}
	