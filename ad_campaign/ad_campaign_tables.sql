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

commit;

insert into campaigns
select 2, 1, 'Overcoming Challenges' from dual union all
select 4, 1, 'Business Rules' from dual union all
select 3, 2, 'YUI' from dual union all
select 1, 3, 'Quantitative Finance' from dual union all
select 5, 3, 'MMC' from dual;

commit;

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