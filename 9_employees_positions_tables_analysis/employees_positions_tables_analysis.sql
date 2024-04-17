create table positions (
position_id int,
title varchar2(26),
groups varchar2(26),
levels varchar2(26),
payscale number,
totalpost int,
constraint pk_position_id primary key (position_id)
);

create table employees (
employee_id int,
name varchar2(26),
position_id int,
constraint pk_employee_id primary key (employee_id),
constraint fk_position_id foreign key (position_id)
references positions (position_id)
);

insert into positions
select 1, 'General Manager', 'A', 'l-15', 10000, 1 from dual union all
select 2, 'Manager', 'B', 'l-14', 9000, 5 from dual union all
select 3, 'Assistant Manager', 'C', 'l-13', 8000, 10 from dual;

insert into employees
select 1, 'John Smith', 1 from dual union all
select 2, 'Jane Doe', 2 from dual union all
select 3, 'Michael Brown', 2 from dual union all
select 4, 'Emily Johnson', 2 from dual union all
select 5, 'William Lee', 3 from dual union all
select 6, 'Jessica Clark', 3 from dual union all
select 7, 'Christopher Harris', 3 from dual union all
select 8, 'Olivia Wilson', 3 from dual union all
select 9, 'Daniel Martinez', 3 from dual union all
select 10, 'Sophia Miller', 3 from dual;

commit;

select * from positions;
select * from employees;

/*
You are working with the human resources database of a company.

Your task is to create a report that lists all job positions 
along with the names of employees holding these positions. 

For positions that are not fully occupied, like where the number 
of employees is less than the total posts available, 
the report should indicate these as 'vacant'.  

Write a SQL query to effectively match employees to their 
respective positions and identify any vacancies in each position.
*/

with nums as (
select level as lvl
from dual
connect by level <= (select max(totalpost) from positions)
),

adding_rows as (
select p.position_id, p.title, p.totalpost
from positions p
union all
select p.position_id, p.title, p.totalpost
from positions p
cross join nums n
where n.lvl <= p.totalpost-1
order by totalpost),

tb_positions as (
select position_id, title, totalpost,
row_number() over(partition by position_id order by rownum) as rn
from adding_rows
),

tb_employees as (
select employee_id,name,position_id,
row_number() over(partition by position_id order by position_id) as rn
from employees
)

select p.title, nvl(e.name,'VACANT') as name
from tb_positions p
left join tb_employees e
on p.position_id = e.position_id and p.rn = e.rn
order by p.totalpost, p.rn;