/*
The goal is to identify top 3 employees with 
the most frequent late arrivals (after 9:00 AM) 
and early departures (before 5:00 PM).
*/

with uncommitted as (select a.*,
count(case
when clock_in_time > to_date('09:00','hh24:mi') then 1
end) over(partition by employee_id) as late_arrival
,count(case
when clock_out_time < to_date('17:00','hh24:mi') then 1
end) over(partition by employee_id) as early_departure
from attendance a)
select distinct employee_name, late_arrival, early_departure from uncommitted
order by late_arrival desc, early_departure desc
fetch first 3 rows only;