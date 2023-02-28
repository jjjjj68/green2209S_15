package com.spring.green2209S_15.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.spring.green2209S_15.dao.ReservationDAO;
import com.spring.green2209S_15.vo.ReservationVO;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	ReservationDAO reservationDAO;
	
	public void getReservation() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sMid");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");	// 형식
		Calendar cal = Calendar.getInstance();
		
		cal.add(cal.DATE, +1);
		String today = sdf.format(cal.getTime());	// 담긴 시간을 뽑아 형식에 맞게 포맷
		
		cal.add(cal.DATE, +4);	// 6일 후 날짜
		String afterDate = sdf.format(cal.getTime());	// 담긴 시간을 뽑아 형식에 맞게 포맷
		
		request.setAttribute("afterDate", afterDate);
		request.setAttribute("today", today);
	}

	@Override
	public List<ReservationVO> getThisDate(String date) {
		return reservationDAO.getThisDate(date);
	}

	@Override
	public int setreservationPost(ReservationVO vo) {
		return reservationDAO.setreservationPost(vo);
	}



}
