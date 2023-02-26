show tables;

CREATE TABLE reservation (
  idx INT NOT NULL AUTO_INCREMENT PRIMARY KEY, /* 인덱스번호 */
  mid VARCHAR(20) NOT NULL,                   /* 사용자 id */
  courtNumber INT NOT NULL,                   /* 코트번호 */
  sDate DATE NOT NULL,                        /* 일정 등록한 날짜 */
  startTime INT NOT NULL,                     /* 코트시작시간 */
  endTime INT NOT NULL,                       /* 코트끝나는시간 */
  available TINYINT(1) NOT NULL,               /* 코트 가능여부 */
  CHECK (startTime < endTime)
);
desc reservation;

select * from reservation


/*drop table reservation;*/



