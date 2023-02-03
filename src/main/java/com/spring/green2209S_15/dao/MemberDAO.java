package com.spring.green2209S_15.dao;

import org.apache.ibatis.annotations.Param;

import com.spring.green2209S_15.vo.MemberVO;

public class MemberDAO {

	public MemberVO getMemeberIdcheck(@Param("mid") String mid);

}
