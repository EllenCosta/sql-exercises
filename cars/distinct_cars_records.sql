/*
Show full table with distinct records
*/

select * from cars;

with unique_cars as (
select c.*,
row_number() over(partition by model_name order by model_id) as rn
from cars c)
select model_id, model_name, color, brand from unique_cars
where rn = 1
order by model_id;