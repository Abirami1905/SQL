/* IN */

create table books(
english varchar,
tamil varchar,
science varchar,
total int);

insert into books values
('Albert Einstein','silapathigaram','botany',40),
('Robert christ','imberungappiyam','zoology',70),
('George Samuel Clason','manimegalai','biology',90);

select * from books where tamil in ('silapathigaram','manimegalai');

select * from books where tamil='silapathigaram'or tamil='manimegalai';

select * from books;

/*BETWEEN*/

select * from books where total between 80 and 90; 

select * from books where total  not between 80 and 90; 

select * from books where total>= 80 and total<= 90; 

/*LIKE*/

select * from books where english like 'G%' ;

select * from books where english like '%Albert%';

select * from books where science like '%------';

select * from books where tamil like 's\%';

select distinct tamil from books where tamil not like 's%';



