show tables;

CREATE TABLE reservation (
  idx INT NOT NULL AUTO_INCREMENT PRIMARY KEY, /* 인덱스번호 */
  mid VARCHAR(20) NOT NULL,                   /* 사용자 id */
  courtNumber INT NOT NULL,                   /* 코트번호 */
  sDate DATE NOT NULL,                        /* 일정 등록한 날짜 */
  startTime VARCHAR(10) NOT NULL,                     /* 코트시작시간 */
  endTime VARCHAR(10) NOT NULL                       /* 코트끝나는시간 */
);
desc reservation;

select * from reservation
select * from reservation where sDate = '2023-02-29' order by startTime;
	
insert into reservation values(default,'admin','1','2023-03-01','12:00','13:00');

/*drop table reservation;*/


SELECT COUNT(*) FROM reservation WHERE date = '2022-02-29' AND time = '10:00';
