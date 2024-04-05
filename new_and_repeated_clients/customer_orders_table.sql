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