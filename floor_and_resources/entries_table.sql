create table entries (
name varchar2(26),
address varchar2(26),
email varchar2(26),
floor int,
resources varchar2(26)
);

insert into entries
select 'A', 'Bangalore', 'A@gmail.com', 1, 'CPU' from dual union all
select 'A', 'Bangalore', 'A1@gmail.com', 1, 'CPU' from dual union all
select 'A', 'Bangalore', 'A2@gmail.com', 2, 'DESKTOP' from dual union all
select 'B', 'Bangalore', 'B@gmail.com', 2, 'DESKTOP' from dual union all
select 'B', 'Bangalore', 'B1@gmail.com', 2, 'DESKTOP' from dual union all
select 'B', 'Bangalore', 'B2@gmail.com', 1, 'MONITOR' from dual;

commit;

select * from entries;