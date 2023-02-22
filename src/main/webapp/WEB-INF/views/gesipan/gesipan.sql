create table gesipan (
  idx  int  not null auto_increment,	/* 게시글의 고유번호 */
  mid				varchar(20) not null,			/* 회원 아이디(작성자) */
  title			varchar(100) not null,		/* 게시글의 글 제목 */
  content		text	not null,						/* 글 내용 */
  wDate			datetime	default now(),	/* 글 올린 날짜 */
  primary key(idx)
);

show tables;

select * from gesipan; 