package com.spring.green2209S_15.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Override
	public void getReservation() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sMid");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");	// 형식
		Calendar cal = Calendar.getInstance();
		
		
		/*
		 * int y = request.getParameter("yy")==null ? cal.get(cal.YEAR) :
		 * Integer.parseInt(request.getParameter("yy")); int m =
		 * request.getParameter("mm")==null ? cal.get(cal.YEAR) :
		 * Integer.parseInt(request.getParameter("mm"));
		 */
		cal.add(cal.DATE, +1);
		String today = sdf.format(cal.getTime());	// 담긴 시간을 뽑아 형식에 맞게 포맷
		
		cal.add(cal.DATE, +5);	// 6일 후 날짜
		String afterDate = sdf.format(cal.getTime());	// 담긴 시간을 뽑아 형식에 맞게 포맷
		
		request.setAttribute("afterDate", afterDate);
		request.setAttribute("today", today);
	}

}
