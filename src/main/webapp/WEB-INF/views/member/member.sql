show tables;

create table member (
  idx int not null auto_increment,	/* 회원 고유번호 */
  mid varchar(20) not null,					/* 회원 아이디(중복불허) */
  pwd varchar(100) not null,				/* 비밀번호(SHA암호화 처리) */
  name	   varchar(20) not null,		/* 회원 성명 */
  tel		  varchar(20) not null,			/* 전화번호(010-1234-5678) */
  email   varchar(50) not null,			/* 이메일(아이디/비밀번호 분실시 사용) - 형식체크필수 */
  primary key(idx,mid)							/* 주키: idx(고유번호), mid(아이디) */
);

/* drop table member; */
desc member;

insert into member values (default, 'admin', '1234', '관리자', '000-0000-0000','dlwo6466@naver.com');
insert into member values (default, 'qwe123', '1234', '첫가입자', '010-1234-1234','wogml6466@gmail.com');

select * from member;