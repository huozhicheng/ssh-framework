create table t_demo(
	id bigint unsigned auto_increment primary key,
	name varchar(16) not null,
	sex varchar(6) ,
	password varchar(50) ,
	age int
);
alter table t_demo auto_increment=100000;