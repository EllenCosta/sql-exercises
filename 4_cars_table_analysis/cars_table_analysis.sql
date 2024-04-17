create table cars (
model_id int,
model_name varchar2(26),
color varchar2(26),
brand varchar2(26)
);

insert into cars
select 1,'Leaf','Black','Nissan' from dual union all
select 2,'Leaf','Black','Nissan' from dual union all
select 3,'Model S','Black','Tesla' from dual union all
select 4,'Model X','White','Tesla' from dual union all
select 5,'Ioniq 5','Black','Hyundai' from dual union all
select 6,'Ioniq 5','Black','Hyundai' from dual union all
select 7,'Ioniq 6','White','Hyundai' from dual;

commit;

select * from cars;

/*
Show full table with distinct records
*/

with unique_cars as (
select c.*,
row_number() over(partition by model_name order by model_id) as rn
from cars c)
select model_id, model_name, color, brand from unique_cars
where rn = 1
order by model_id;