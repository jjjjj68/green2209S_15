show tables;

create table reservation (
	idx int not null auto_increment primary key, /* 인덱스번호 */
	mid varchar(20) not null,		/* 사용자 id */
	courtNumber int not null,		/* 코트번호 */
	sDate datetime not null,		/* 일정 등록한 날짜 */
	startTime int not null,									/* 코트시작시간 */
	endTime int not null,									/* 코트끝나는시간 */
	yesno varchar(2) not null		/* 코트 가능여부 */
);

desc reservation;

/*drop table reservation;*/
