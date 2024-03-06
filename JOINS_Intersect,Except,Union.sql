--creating a table 1
create table customer_20 (
c_id int,
	c_name varchar,
	c_age int,
	c_product varchar
);

insert into customer_20 values(1,'carl',28,'shoe'),
(1,'einstein',23,'sandals'),
(1,'albido',24,'socks'),
(1,'albert',27,'slipper');

update customer_20 set c_id=2 where c_name='einstein'
update customer_20 set c_id=3 where c_name='albido'
update customer_20 set c_id=4 where c_name='albert'



select * from customer_20

--creating a table 2
create table sales_20 (
s_id int,
	s_name varchar,
	s_age int,
	s_product varchar
);

insert into sales_20 values(1,'tata',28,'shoe'),
(2,'einstein',27,'socks'),
(3,'john',24,'slippers'),
(4,'kamaraj',22,'sandals');


select * from sales_20

--JOINS

/*inner join
full join
left join
right join
cross join*/

--INNER JOIN

select 
  a.c_age,
  a.c_id,
  b.s_product,
  b.s_id
from customer_20 as a
inner join sales_20 as b 
on a.c_id = b.s_id
order by c_id;

--FULL JOIN

select 
  a.c_age,
  a.c_id,
  b.s_product,
  b.s_id
from customer_20 as a
full join sales_20 as b 
on a.c_id = b.s_id
order by c_id;

--LEFT JOIN
select 
  a.c_age,
  a.c_id,
  b.s_product,
  b.s_id
from customer_20 as a
LEFT JOIN sales_20 as b 
on a.c_id = b.s_id
order by c_id;

--RIGHT JOIN

select 
  a.c_age,
  a.c_id,
  b.s_product,
  b.s_id
from customer_20 as a
RIGHT JOIN sales_20 as b 
on a.c_id = b.s_id
order by c_id;

--CROSS JOIN

select 
  a.c_age,
  a.c_id,
  b.s_product,
  b.s_id
from customer_20 as a
CROSS JOIN sales_20 as b 

order by c_id;

--COMBINING QUERIES
/*
INTERSECT
EXCEPT
UNION
*/

--INTERSECT

select c_id from customer_20
intersect
select s_id from sales_20

--EXCEPT

select c_id from customer_20
except
select s_id from sales_20

--UNION

select c_id from customer_20
union
select s_id from sales_20







