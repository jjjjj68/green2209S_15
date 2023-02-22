package com.spring.green2209S_15.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.green2209S_15.vo.GesipanVO;

public interface GesipanDAO {

	public int setGesipanInput(@Param("vo") GesipanVO vo);

	public int totRecCnt();

	public List<GesipanVO> getGesipan(@Param("startIndexNo") int startIndexNo,@Param("pageSize") int pageSize);


}
