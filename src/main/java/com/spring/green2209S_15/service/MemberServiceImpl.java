package com.spring.green2209S_15.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.green2209S_15.dao.MemberDAO;
import com.spring.green2209S_15.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDAO memberDAO;

	@Override
	public MemberVO getMemeberIdcheck(String mid) {
		return memberDAO.getMemeberIdcheck(mid);
	}
	
}
