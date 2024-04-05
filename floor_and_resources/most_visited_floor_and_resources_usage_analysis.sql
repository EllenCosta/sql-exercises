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