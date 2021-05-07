create table tb_board(
	idx int not null auto_increment,
	title varchar(100) not null,
	contents varchar(4000) not null,
	count int,
	writer varchar(30),
	indate datetime default now(),
	primary key(idx)

);

DROP table tb_board;

insert into tb_board(title, contents, count, writer)
values('게시판 테스트', '게시판 테스트', 0, '관리자');

select * from tb_board;