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

/*
Create a summary table for each individual 
based on their floor visits and resource usage. 

The table should include the most visited floor, 
the total number of visits, and a list of 
all distinct resources used by each individual.
*/

with most_visited_floor as (
select distinct name,

case
when count(floor) > 1 then floor
end as most_visited,

count(floor) as number_visits

from entries
group by name, floor
having count(floor) > 1
)

select distinct m.name, m.most_visited, m.number_visits,
listagg(distinct e.resources,', ') 
over (partition by e.name) as resources_used 
from entries e
join most_visited_floor m
on e.name = m.name;