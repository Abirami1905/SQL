
--creating a shop table
create table shop(
ser_no int,
cus_name varchar(30),
cus_age varchar(30),
cus_order int,
cus_id int);

--insering values

insert into shop 
values(1,'ram','30',56,55),
(1,'ram','30',56,55),
(1,'sita','28',35,56),
(1,'anuman','37',43,57);

--AS

select cus_id as "c_id",cus_age as "c_age" from shop;

--AGGREGATE FUNCTIONS
/* 1.COUNT
2.SUM
3.AVG
4.MIN
5.MAX */

--COUNT

select count(*) from shop;

select count(ser_no) from shop;

--SUM

select sum(cus_id) from shop;

select sum(ser_no) from shop;

--AVG

select avg(cus_id) from shop;

select avg(ser_no) from shop;

--MIN
 
select min(cus_age) from shop;

select min(ser_no) from shop;

--MAX

select max(cus_id) from shop;

select max(ser_no) from shop;







select * from shop