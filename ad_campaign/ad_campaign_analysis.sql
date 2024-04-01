/*
As part of HackerAd's advertising system analytics, 
they need a list of the customers who have the most 
failures and successes in ad campaigns.

- There should be exactly two rows that contain type, customer, campaign, total.
- type contains 'success' in the first row and 'failure' in the second. 
These relate to events.status.
- customer is the customers.first_name and customers.last_name, 
separated by a single space.
- campaign is a comma-separated list of campaigns.name that are 
associated with the customer, ordered ascending.
- total is the number of associated events.
- Report only 2 customers, the two with the most successful 
and the most failing campaigns.
*/
-- type, customer, campaign, total.
with collected as (
select ct.first_name || ' ' || ct.last_name as customer, cp.name, 
listagg(distinct cp.name,',') over(partition by ct.customer_id) as campaign, e.status as type,
count(e.status) over(partition by ct.customer_id,e.status) as total
from customers ct
join campaigns cp
on ct.customer_id = cp.customer_id
join events e
on e.campaign_id = cp.campaign_id),

all_columns as (
select distinct customer, campaign, type, total,
dense_rank() over(order by total desc) as rank
from collected)

select type, customer, campaign, total 
from all_columns
where rank <= 2
order by type desc;