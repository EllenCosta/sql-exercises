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