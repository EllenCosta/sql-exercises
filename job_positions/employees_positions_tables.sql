create table positions (
position_id int,
title varchar2(26),
groups varchar2(26),
levels varchar2(26),
payscale number,
totalpost int,
constraint pk_position_id primary key (position_id)
);

insert into positions
select 1, 'General Manager', 'A', 'l-15', 10000, 1 from dual union all
select 2, 'Manager', 'B', 'l-14', 9000, 5 from dual union all
select 3, 'Assistant Manager', 'C', 'l-13', 8000, 10 from dual;

commit;

create table employees (
employee_id int,
name varchar2(26),
position_id int,
constraint pk_employee_id primary key (employee_id),
constraint fk_position_id foreign key (position_id)
references positions (position_id)
);

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