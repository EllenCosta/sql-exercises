create table icc_world_cup (
Team_1 varchar2(26), 
Team_2 varchar2(26), 
Winner varchar2(26)
); 

insert into icc_world_cup
select 'India', 'SL', 'India' from dual union all
select 'SL', 'Aus', 'Aus' from dual union all
select 'SA', 'Eng', 'Eng' from dual union all
select 'Eng', 'NZ', 'NZ' from dual union all
select 'Aus', 'India', 'India' from dual;

commit;

select * from icc_world_cup;