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