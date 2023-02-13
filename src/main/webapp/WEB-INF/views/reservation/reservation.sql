show tables;

create table reservation (
	idx int not null auto_increment primary key,
	mid varchar(20) not null,
	sDate datetime not null,		/* 일정 등록한 날짜 */
	part varchar(20) not null  /* 1.모임 2.업무 3.학습 4.여행 0.기타 */
);
