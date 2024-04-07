create table users (
user_id int,
banned varchar2(3 char),
role varchar2(6 char),
constraint pk_user_id primary key (user_id)
);

insert into users
select 1, 'No', 'client' from dual union all
select 2, 'Yes', 'client' from dual union all
select 3, 'No', 'client' from dual union all
select 4, 'No', 'client' from dual union all
select 10, 'No', 'driver' from dual union all
select 11, 'No', 'driver' from dual union all
select 12, 'No', 'driver' from dual union all
select 13, 'No', 'driver' from dual;

create table trips (
trip_id int,
client_id int,
driver_id int,
city_id int,
status varchar2(26 char),
request_at date,
constraint pk_trip_id primary key (trip_id),
constraint fk_client_id foreign key (client_id)
references users (user_id),
constraint fk_driver_id foreign key (driver_id)
references users (user_id)
);

insert into trips
select 1, 1, 10, 1, 'completed', to_date('01/10/2013','dd/mm/yyyy') from dual union all
select 2, 2, 11, 1, 'cancelled_by_driver', to_date('01/10/2013','dd/mm/yyyy') from dual union all
select 3, 3, 12, 6, 'completed', to_date('01/10/2013','dd/mm/yyyy') from dual union all
select 4, 4, 13, 6, 'cancelled_by_client', to_date('01/10/2013','dd/mm/yyyy') from dual union all
select 5, 1, 10, 1, 'completed', to_date('02/10/2013','dd/mm/yyyy') from dual union all
select 6, 2, 11, 6, 'completed', to_date('02/10/2013','dd/mm/yyyy') from dual union all
select 7, 3, 12, 6, 'completed', to_date('02/10/2013','dd/mm/yyyy') from dual union all
select 8, 2, 12, 12, 'completed', to_date('03/10/2013','dd/mm/yyyy') from dual union all
select 9, 3, 10, 12, 'completed', to_date('03/10/2013','dd/mm/yyyy') from dual union all
select 10, 4, 13, 12, 'cancelled_by_driver', to_date('03/10/2013','dd/mm/yyyy') from dual;

commit;

select * from users;
select * from trips;