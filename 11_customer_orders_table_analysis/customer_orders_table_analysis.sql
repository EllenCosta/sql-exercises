create sequence seq_cust_ord_id
start with 1
increment by 1
minvalue 1
nocycle
nocache;

create table customer_orders (
order_id int default seq_cust_ord_id.nextval,
customer_id int,
order_date date,
order_amount int,
constraint pk_order_id primary key (order_id)
);

insert into customer_orders (customer_id, order_date, order_amount)
select 100, to_date('01/01/2022','dd/mm/yyyy'), 2000 from dual union all
select 200, to_date('01/01/2022','dd/mm/yyyy'), 2500 from dual union all
select 300, to_date('01/01/2022','dd/mm/yyyy'), 2100 from dual union all
select 100, to_date('02/01/2022','dd/mm/yyyy'), 2000 from dual union all
select 400, to_date('02/01/2022','dd/mm/yyyy'), 2200 from dual union all
select 500, to_date('02/01/2022','dd/mm/yyyy'), 2700 from dual union all
select 100, to_date('03/01/2022','dd/mm/yyyy'), 3000 from dual union all
select 400, to_date('03/01/2022','dd/mm/yyyy'), 1000 from dual union all
select 600, to_date('03/01/2022','dd/mm/yyyy'), 3000 from dual;

commit;

select * from customer_orders;

/*
Analyze the customer order data to determine the number of new and 
repeated clients for each order date.

New Clients: 
These are customers who are placing an order for the first time. 
A customer is considered new on a particular date 
if they have no prior orders before that date.

Repeated Clients: 
These are customers who have placed orders previously. 
A customer is considered a repeated client on a particular date 
if they have one or more orders before that date.

The task is to count the number of new and repeated clients for each 
unique order date in the dataset. The expected output table summarizes 
this information, showing for each date the number of new clients 
and the number of repeated clients.
*/

with ordered_table as (
select order_date,
count(customer_id) over(partition by customer_id order by order_date) as customer_count,
count(customer_id) over(partition by order_date) as clients_per_day
from customer_orders
order by order_date),

new_clients as (
select distinct order_date, clients_per_day,
case
when customer_count = 1 then sum(customer_count) over(partition by order_date,customer_count)
end new_clients
from ordered_table
where customer_count = 1)

select order_date,new_clients,
clients_per_day - new_clients as repeated_clients
from new_clients;