package com.spring.green2209S_15.dao;

import org.apache.ibatis.annotations.Param;

import com.spring.green2209S_15.vo.ReservationVO;

public interface ReservationDAO {

	public void setReservation(@Param("reservationvo") ReservationVO reservationvo);



}
