package com.spring.green2209S_15.service;

import com.spring.green2209S_15.vo.MemberVO;

public interface MemberService {

	public MemberVO getMemberIdcheck(String mid);

	public int setJoinOk(MemberVO vo);


	
}
