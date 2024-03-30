/*
Display the average billing amount for each customer 
between 2019 to 2021, assume the value of the billing amount 
being $0 if nothing is billed for the particular year of that customer.
*/

select * from billing;

with count_years as (
select b.*, count(customer_name) over(partition by customer_name) as count_customer,
case
when 
count(case when extract(year from billing_creation_date) = 2019 then 1 end) 
    over(partition by customer_name) = 0 or 
count(case when extract(year from billing_creation_date) = 2020 then 1 end) 
    over(partition by customer_name) = 0 or 
count(case when extract(year from billing_creation_date) = 2021 then 1 end) 
    over(partition by customer_name) = 0 then 1 else 0
end years_count
from billing b)
select customer_name,billing_creation_date, billed_amount, 
sum(case
when extract(year from billing_creation_date) between 2019 and 2021 then billed_amount
else 0
end) over(partition by customer_name) / (count_customer+years_count) as avg_bill
from count_years;



----------------------------------------------------------------------

with explanation as (
select customer_name, billing_creation_date,
count(case when extract(year from billing_creation_date) = 2019 then 1 end)
    over(partition by customer_name) as y19,
count(case when extract(year from billing_creation_date) = 2020 then 1 end)
    over(partition by customer_name) as y20,
count(case when extract(year from billing_creation_date) = 2021 then 1 end)
    over(partition by customer_name) as y21
from billing)
select customer_name, billing_creation_date,
case 
when y19 = 0 then 'nothing was billed for y19 of this customer'
when y20 = 0 then 'nothing was billed for y20 of this customer'
when y21 = 0 then 'nothing was billed for y21 of this customer'
else 'all 3 years of this customer were billed.'
end billed
from explanation;