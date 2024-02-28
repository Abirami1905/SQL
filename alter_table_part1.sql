create table school(rollno int,stu_name varchar(35),class int);

alter table school rename column stu_age to age;

alter table school alter column age set not null;


insert into school(rollno,stu_name,class)values
(1,'anitha',3);

select * from school;

alter table  school add column section varchar(5);

alter table school alter column section drop not null;

alter table school add constraint rollno check (rollno>0);

alter table school add primary key(stu_name);

delete from school;