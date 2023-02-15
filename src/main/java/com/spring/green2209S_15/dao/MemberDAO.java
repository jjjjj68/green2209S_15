package com.spring.green2209S_15.dao;

import org.apache.ibatis.annotations.Param;

import com.spring.green2209S_15.vo.MemberVO;

public interface MemberDAO {

	public MemberVO getMemberIdcheck(@Param("mid") String mid);

	public int setJoinOk(@Param("vo") MemberVO vo);


}
