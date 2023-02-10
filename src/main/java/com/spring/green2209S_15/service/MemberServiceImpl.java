package com.spring.green2209S_15.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.spring.green2209S_15.dao.MemberDAO;
import com.spring.green2209S_15.vo.MemberVO;

@Service
@Repository
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDAO memberDAO;

	@Override
	public MemberVO getMemberIdcheck(String mid) {
		return memberDAO.getMemberIdcheck(mid);
	}

	@Override
	public int setJoinOk(MemberVO vo) {
		int res =0;
		if (vo != null) {
			memberDAO.setJoinOk(vo);
			res = 1;
			System.out.println("res =" + res);
		}
		
		return res;
	}




	
}
