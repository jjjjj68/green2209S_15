package com.spring.green2209S_15;

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
	
	/*
	@RequestMapping(value = "/reservation", method=RequestMethod.GET)
	public String dateGet() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");	// 형식
		
		Calendar cal = Calendar.getInstance();
		String today = sdf.format(cal.getTime());	// 담긴 시간을 뽑아 형식에 맞게 포맷
		
		cal.add(cal.DATE, +6);	// 14일 후 날짜
		String afterDate = sdf.format(cal.getTime());	// 담긴 시간을 뽑아 형식에 맞게 포맷
		
		return afterDate;
	}
	*/
}
	