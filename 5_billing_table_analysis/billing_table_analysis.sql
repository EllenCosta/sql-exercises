create table billing (
customer_id int,
customer_name varchar2(26),
billing_id varchar2(26),
billing_creation_date date,
billed_amount int
);

insert into billing
select 1, 'A', 'id1', to_date('10/10/2020','dd/mm/yyyy'), 100 from dual union all
select 1, 'A', 'id2', to_date('11/11/2020','dd/mm/yyyy'), 150 from dual union all
select 1, 'A', 'id3', to_date('12/11/2021','dd/mm/yyyy'), 100 from dual union all
select 2, 'B', 'id4', to_date('10/11/2019','dd/mm/yyyy'), 150 from dual union all
select 2, 'B', 'id5', to_date('11/11/2020','dd/mm/yyyy'), 200 from dual union all
select 2, 'B', 'id6', to_date('12/11/2021','dd/mm/yyyy'), 250 from dual union all
select 3, 'C', 'id7', to_date('01/01/2018','dd/mm/yyyy'), 100 from dual union all
select 3, 'C', 'id8', to_date('05/01/2019','dd/mm/yyyy'), 250 from dual union all
select 3, 'C', 'id9', to_date('06/01/2021','dd/mm/yyyy'), 300 from dual;

commit;

select * from billing;

/*
Display the average billing amount for each customer 
between 2019 to 2021, assume the value of the billing amount 
being $0 if nothing is billed for the particular year of that customer.
*/

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