create table customers (
customer_id int,
first_name varchar2(26),
last_name varchar2(26),
constraint pk_customer_id primary key (customer_id)
);

create table campaigns (
campaign_id int,
customer_id int,
name varchar2(26),
constraint pk_campaign_id primary key (campaign_id),
constraint fk_customer_id foreign key (customer_id)
references customers (customer_id)
);

create table events (
campaign_id int,
status varchar2(26),
constraint fk_campaign_id foreign key (campaign_id)
references campaigns (campaign_id)
);

insert into customers
select 1, 'Carolyn', 'O''Lunny' from dual union all
select 2, 'Matteo', 'Husthwaite' from dual union all
select 3, 'Melessa', 'Rowesby' from dual;

insert into campaigns
select 2, 1, 'Overcoming Challenges' from dual union all
select 4, 1, 'Business Rules' from dual union all
select 3, 2, 'YUI' from dual union all
select 1, 3, 'Quantitative Finance' from dual union all
select 5, 3, 'MMC' from dual;

insert into events
select 1, 'success' from dual union all
select 1, 'success' from dual union all
select 2, 'success' from dual union all
select 2, 'success' from dual union all
select 2, 'success' from dual union all
select 2, 'success' from dual union all
select 2, 'success' from dual union all
select 3, 'success' from dual union all
select 3, 'success' from dual union all
select 3, 'success' from dual union all
select 4, 'success' from dual union all
select 4, 'success' from dual union all
select 4, 'failure' from dual union all
select 4, 'failure' from dual union all
select 5, 'failure' from dual union all
select 5, 'failure' from dual union all
select 5, 'failure' from dual union all
select 5, 'failure' from dual union all
select 5, 'failure' from dual union all
select 5, 'failure' from dual union all
select 4, 'success' from dual union all
select 5, 'success' from dual union all
select 5, 'success' from dual union all
select 1, 'failure' from dual union all
select 1, 'failure' from dual union all
select 1, 'failure' from dual union all
select 2, 'failure' from dual union all
select 3, 'failure' from dual;

commit;

select * from customers;
select * from campaigns;
select * from events;

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