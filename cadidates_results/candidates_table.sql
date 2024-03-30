create table candidates (
candidate_id int,
gender varchar2(2),
age int,
party varchar2(26),
constraint pk_cadidate_id primary key (candidate_id)
);

insert into candidates
select 1, 'M', 55, 'Democratic' from dual union all
select 2, 'M', 51, 'Democratic' from dual union all
select 3, 'F', 62, 'Republic' from dual union all
select 4, 'M', 60, 'Republic' from dual union all
select 5, 'F', 61, 'Republic' from dual union all
select 6, 'F', 58, 'Republic' from dual;

commit;

select * from candidates;