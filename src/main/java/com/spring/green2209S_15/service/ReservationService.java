package com.spring.green2209S_15.service;

import java.util.List;

import com.spring.green2209S_15.vo.ReservationVO;

public interface ReservationService {

	public void getReservation();

	public List<ReservationVO> getThisDate(String date);

	public int setreservationPost(ReservationVO vo);

	
}
