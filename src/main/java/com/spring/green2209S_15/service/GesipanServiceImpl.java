package com.spring.green2209S_15.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.green2209S_15.dao.GesipanDAO;
import com.spring.green2209S_15.vo.GesipanVO;

@Service
public class GesipanServiceImpl implements GesipanService {
	@Autowired
	GesipanDAO gesipanDAO;

	@Override
	public int setGesipanInput(GesipanVO vo) {
		return gesipanDAO.setGesipanInput(vo);
	}

	@Override
	public List<GesipanVO> getGesipan(int startIndexNo, int pageSize) {
		return gesipanDAO.getGesipan(startIndexNo, pageSize);
	}

}
