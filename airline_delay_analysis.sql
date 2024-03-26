/*
Write a SQL query to identify airlines with the most frequent delays 
and categorize the common reasons for these delays. 
Display the airline name, count of delayed flights, 
and the most common delay reason.
*/

with counted_delay as (select f.*,
count(delay_reason) over (partition by airline_name,delay_reason) as count_delay,
count(delay_reason) over (partition by airline_name) as count_delay_flights
from flights f),

delayed_flights as (
select distinct airline_name, delay_reason, count_delay_flights, count_delay,
max(count_delay) over(partition by airline_name) as max
from counted_delay
order by airline_name,count_delay desc)

select airline_name,
count_delay_flights as delayed_flights,
delay_reason as common_reason
from delayed_flights
where count_delay = max;