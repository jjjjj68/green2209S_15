package com.spring.green2209S_15.service;

import java.util.ArrayList;
import java.util.List;

import com.spring.green2209S_15.vo.GesipanVO;

public interface GesipanService {

	public int setGesipanInput(GesipanVO vo);

	public List<GesipanVO> getGesipan(int startIndexNo, int pageSize);

	public ArrayList<GesipanVO> getPrevNext(int idx);

	public GesipanVO getContent(int idx);

	public void setUpdate(GesipanVO vo);

	public void setDeleteOk(int idx);
	
	
	
}
