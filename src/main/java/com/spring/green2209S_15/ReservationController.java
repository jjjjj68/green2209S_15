package com.spring.green2209S_15;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.green2209S_15.service.ReservationService;
import com.spring.green2209S_15.vo.ReservationTimeVO;
import com.spring.green2209S_15.vo.ReservationVO;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	
	@Autowired
	ReservationService reservationService;
	
	
	@RequestMapping(value = "/reservation", method=RequestMethod.GET)
	public String reservationGet(Model model) {
		reservationService.getReservation();
		
		return "reservation/reservation";
	}
	
	@ResponseBody
	@RequestMapping(value = "/reservation", method = RequestMethod.POST)
	public String reservationPost(ReservationVO vo,@RequestParam("afterDay") int afterDay, HttpSession session) {
		String mid = (String) session.getAttribute("sMid");
		
		vo.setMid(mid);
		
		int startTime = Integer.parseInt(vo.getStartTime());
		int endTime = startTime+1;
		
		String strStartTime = startTime + "";
		String strEndTime = endTime + "";
		
		if(strStartTime.length() == 1) strStartTime = "0" + strStartTime + ":00";
		else strStartTime = strStartTime + ":00";
		if(strEndTime.length() == 1) strEndTime = "0" + strEndTime + ":00";
		else strEndTime = strEndTime + ":00";
		
		vo.setStartTime(strStartTime);
		vo.setEndTime(strEndTime);
		
		LocalDate date = LocalDate.now().plusDays(afterDay);
		vo.setSDate(date.toString());
		
		int res = reservationService.setreservationPost(vo);
		
		return res+"";
	}
	
	@ResponseBody
	@RequestMapping(value = "/getThisDate", method = RequestMethod.POST)
	public List<ReservationTimeVO> getThisDatePost(@RequestParam("day") int day) {
		LocalDate date = LocalDate.now().plusDays(day);
		
		List<ReservationVO> vos = reservationService.getThisDate(date.toString());
		
		List<ReservationTimeVO> timeVOS = new ArrayList<ReservationTimeVO>();
		
		String strTime = "";
		for(int courtNum=1; courtNum<=5; courtNum++) {
			ReservationTimeVO timeVO = new ReservationTimeVO();
			for(int i=0; i<vos.size(); i++) {
				if(vos.get(i).getCourtNumber() == courtNum) strTime += vos.get(i).getStartTime() + "/";
			}
			
			if(strTime.contains("09:00")) timeVO.setTime09("x");
			if(strTime.contains("10:00")) timeVO.setTime10("x");
			if(strTime.contains("11:00")) timeVO.setTime11("x");
			if(strTime.contains("12:00")) timeVO.setTime12("x");
			if(strTime.contains("13:00")) timeVO.setTime13("x");
			if(strTime.contains("14:00")) timeVO.setTime14("x");
			if(strTime.contains("15:00")) timeVO.setTime15("x");
			if(strTime.contains("16:00")) timeVO.setTime16("x");
			if(strTime.contains("17:00")) timeVO.setTime17("x");
			if(strTime.contains("18:00")) timeVO.setTime18("x");
			if(strTime.contains("19:00")) timeVO.setTime19("x");
			if(strTime.contains("20:00")) timeVO.setTime20("x");
			if(strTime.contains("21:00")) timeVO.setTime21("x");
			
			timeVOS.add(timeVO);
			//System.out.println(timeVOS);
			strTime = "";
		}
		return timeVOS;
	}
}
	