select * from shop

update shop set ser_no='2'where cus_age='37';

delete from shop where cus_id=55;

insert into shop values(3,'ram','30',78,89);

--GROUP BY

select cus_name,count(ser_no) as serial_no from shop group by cus_name;

select cus_name,count(ser_no) as serial_no from shop group by cus_name limit 2;

--HAVING CLAUSE

select cus_name,count(cus_name) as serial_no from shop group by cus_name having count(cus_name)>3;

select cus_name,count(ser_no) as serial_no from shop group by cus_name having count(ser_no)=3;

--CASE

select *,
     case when cus_age<'30' then 'YOUNG'
	      when cus_age>'30' then 'MIDDLE AGED'
		  else 'SENIOR CITIZEN'
		  end as age_catogorization
     from shop;
