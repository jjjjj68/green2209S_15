package com.spring.green2209S_15.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.green2209S_15.vo.ReservationVO;

public interface ReservationDAO {

	public void setReservation(@Param("reservationvo") ReservationVO reservationvo);

	public List<ReservationVO> getThisDate(@Param("date") String date);

	public int setreservationPost(@Param("vo") ReservationVO vo);




}
