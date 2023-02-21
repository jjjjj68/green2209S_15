package com.spring.green2209S_15.vo;

import lombok.Data;

@Data
public class GesipanVO {
	private int idx;
	private String mid;
	private String title;
	private String content;
	private String wDate;
	
	private int day_diff;		// 날짜 차이 계산 필드(1일차이 계산필드)
	private int hour_diff;	// 날짜 차이 계산 필드(24시간차이 계산필드)
	
	// 이전글/다음글을 위한 변수 설정
	private int preIdx;
	private int nextIdx;
	private String preTitle;
	private String nextTitle;
}
