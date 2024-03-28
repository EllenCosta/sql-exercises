create table employees (
id int,
name varchar2(20),
skill varchar2(20),
proficiency number
);

insert into employees
select 1,'John Doe','SQL',4 from dual union all
select 2,'Jane Smith','SQL',3 from dual union all
select 3,'Alice Johnson','Python',2 from dual union all
select 4,'Bob Brown','Python',5 from dual union all
select 5,'Charlie Davis','Data Analysis',3 from dual union all
select 6,'Diana Evans','Data Analysis',4 from dual union all
select 7,'Frank Green','Machine Learning',2 from dual union all
select 8,'Grace Hall','Machine Learning',3 from dual union all
select 9,'Henry Irving','Project Management',5 from dual union all
select 10,'Isabel Jackson','Project Management',4 from dual union all
select 11,'Kyle Larson','SQL',2 from dual union all
select 12,'Liam Morgan','Python',3 from dual union all
select 13,'Mia Nelson','Data Analysis',5 from dual union all
select 14,'Noah O''Donnell','Machine Learning',4 from dual union all
select 15,'Olivia Parker','Project Management',3 from dual union all
select 16,'Peter Quinn','SQL',5 from dual union all
select 17,'Quincy Roberts','Python',4 from dual union all
select 18,'Rachel Stevens','Data Analysis',2 from dual union all
select 19,'Samuel Turner','Machine Learning',1 from dual union all
select 20,'Tina Underwood','Project Management',2 from dual;

commit;

select * from employees;