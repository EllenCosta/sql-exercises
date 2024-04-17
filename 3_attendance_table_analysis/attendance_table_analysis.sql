create table attendance (
employee_id int,
employee_name varchar2(26),
attendance_date date,
clock_in_time timestamp,
clock_out_time timestamp
);

insert into attendance
select 1, 'John Doe', to_date('01/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('01/04/2023','dd/mm/yyyy'), to_timestamp('09:10:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('01/04/2023','dd/mm/yyyy'), to_timestamp('09:05:00','hh24:mi:ss'), to_timestamp('16:55:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('01/04/2023','dd/mm/yyyy'), to_timestamp('08:55:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('01/04/2023','dd/mm/yyyy'), to_timestamp('08:30:00','hh24:mi:ss'), to_timestamp('16:45:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('02/04/2023','dd/mm/yyyy'), to_timestamp('08:40:00','hh24:mi:ss'), to_timestamp('17:10:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('02/04/2023','dd/mm/yyyy'), to_timestamp('09:15:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('02/04/2023','dd/mm/yyyy'), to_timestamp('08:55:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('02/04/2023','dd/mm/yyyy'), to_timestamp('09:20:00','hh24:mi:ss'), to_timestamp('17:25:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('02/04/2023','dd/mm/yyyy'), to_timestamp('08:35:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('03/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('03/04/2023','dd/mm/yyyy'), to_timestamp('09:05:00','hh24:mi:ss'), to_timestamp('16:50:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('03/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('03/04/2023','dd/mm/yyyy'), to_timestamp('09:10:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('03/04/2023','dd/mm/yyyy'), to_timestamp('08:40:00','hh24:mi:ss'), to_timestamp('17:10:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('04/04/2023','dd/mm/yyyy'), to_timestamp('08:55:00','hh24:mi:ss'), to_timestamp('17:25:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('04/04/2023','dd/mm/yyyy'), to_timestamp('09:20:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('04/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('04/04/2023','dd/mm/yyyy'), to_timestamp('09:25:00','hh24:mi:ss'), to_timestamp('17:40:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('04/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('05/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('05/04/2023','dd/mm/yyyy'), to_timestamp('09:05:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('05/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('16:45:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('05/04/2023','dd/mm/yyyy'), to_timestamp('09:15:00','hh24:mi:ss'), to_timestamp('17:30:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('05/04/2023','dd/mm/yyyy'), to_timestamp('08:30:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('06/04/2023','dd/mm/yyyy'), to_timestamp('08:55:00','hh24:mi:ss'), to_timestamp('17:25:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('06/04/2023','dd/mm/yyyy'), to_timestamp('09:20:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('06/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('06/04/2023','dd/mm/yyyy'), to_timestamp('09:25:00','hh24:mi:ss'), to_timestamp('17:40:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('06/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('07/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('07/04/2023','dd/mm/yyyy'), to_timestamp('09:05:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('07/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('16:45:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('07/04/2023','dd/mm/yyyy'), to_timestamp('09:15:00','hh24:mi:ss'), to_timestamp('17:30:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('07/04/2023','dd/mm/yyyy'), to_timestamp('08:30:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('08/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('08/04/2023','dd/mm/yyyy'), to_timestamp('09:15:00','hh24:mi:ss'), to_timestamp('17:30:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('08/04/2023','dd/mm/yyyy'), to_timestamp('08:55:00','hh24:mi:ss'), to_timestamp('17:10:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('08/04/2023','dd/mm/yyyy'), to_timestamp('09:00:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('08/04/2023','dd/mm/yyyy'), to_timestamp('08:40:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('09/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:25:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('09/04/2023','dd/mm/yyyy'), to_timestamp('09:10:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('09/04/2023','dd/mm/yyyy'), to_timestamp('09:05:00','hh24:mi:ss'), to_timestamp('16:50:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('09/04/2023','dd/mm/yyyy'), to_timestamp('08:55:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('09/04/2023','dd/mm/yyyy'), to_timestamp('08:35:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('10/04/2023','dd/mm/yyyy'), to_timestamp('08:40:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('10/04/2023','dd/mm/yyyy'), to_timestamp('09:20:00','hh24:mi:ss'), to_timestamp('17:10:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('10/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('10/04/2023','dd/mm/yyyy'), to_timestamp('09:15:00','hh24:mi:ss'), to_timestamp('17:30:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('10/04/2023','dd/mm/yyyy'), to_timestamp('08:30:00','hh24:mi:ss'), to_timestamp('16:55:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('11/04/2023','dd/mm/yyyy'), to_timestamp('08:55:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('11/04/2023','dd/mm/yyyy'), to_timestamp('09:05:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('11/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('11/04/2023','dd/mm/yyyy'), to_timestamp('09:10:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('11/04/2023','dd/mm/yyyy'), to_timestamp('08:40:00','hh24:mi:ss'), to_timestamp('17:10:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('12/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('12/04/2023','dd/mm/yyyy'), to_timestamp('09:15:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('12/04/2023','dd/mm/yyyy'), to_timestamp('09:00:00','hh24:mi:ss'), to_timestamp('16:55:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('12/04/2023','dd/mm/yyyy'), to_timestamp('08:55:00','hh24:mi:ss'), to_timestamp('17:25:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('12/04/2023','dd/mm/yyyy'), to_timestamp('08:35:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('13/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('13/04/2023','dd/mm/yyyy'), to_timestamp('09:10:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('13/04/2023','dd/mm/yyyy'), to_timestamp('08:55:00','hh24:mi:ss'), to_timestamp('17:10:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('13/04/2023','dd/mm/yyyy'), to_timestamp('09:20:00','hh24:mi:ss'), to_timestamp('17:30:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('13/04/2023','dd/mm/yyyy'), to_timestamp('08:30:00','hh24:mi:ss'), to_timestamp('16:45:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('14/04/2023','dd/mm/yyyy'), to_timestamp('08:40:00','hh24:mi:ss'), to_timestamp('17:10:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('14/04/2023','dd/mm/yyyy'), to_timestamp('09:25:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('14/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('14/04/2023','dd/mm/yyyy'), to_timestamp('09:15:00','hh24:mi:ss'), to_timestamp('17:40:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('14/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('15/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('15/04/2023','dd/mm/yyyy'), to_timestamp('09:05:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('15/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('16:45:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('15/04/2023','dd/mm/yyyy'), to_timestamp('09:15:00','hh24:mi:ss'), to_timestamp('17:30:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('15/04/2023','dd/mm/yyyy'), to_timestamp('08:30:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('16/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('16/04/2023','dd/mm/yyyy'), to_timestamp('09:10:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('16/04/2023','dd/mm/yyyy'), to_timestamp('08:55:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('16/04/2023','dd/mm/yyyy'), to_timestamp('09:20:00','hh24:mi:ss'), to_timestamp('17:25:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('16/04/2023','dd/mm/yyyy'), to_timestamp('08:35:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('17/04/2023','dd/mm/yyyy'), to_timestamp('08:40:00','hh24:mi:ss'), to_timestamp('17:10:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('17/04/2023','dd/mm/yyyy'), to_timestamp('09:15:00','hh24:mi:ss'), to_timestamp('16:50:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('17/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('17/04/2023','dd/mm/yyyy'), to_timestamp('09:10:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('17/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('18/04/2023','dd/mm/yyyy'), to_timestamp('08:55:00','hh24:mi:ss'), to_timestamp('17:25:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('18/04/2023','dd/mm/yyyy'), to_timestamp('09:20:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('18/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('18/04/2023','dd/mm/yyyy'), to_timestamp('09:25:00','hh24:mi:ss'), to_timestamp('17:40:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('18/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('19/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('19/04/2023','dd/mm/yyyy'), to_timestamp('09:05:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('19/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('16:45:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('19/04/2023','dd/mm/yyyy'), to_timestamp('09:15:00','hh24:mi:ss'), to_timestamp('17:30:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('19/04/2023','dd/mm/yyyy'), to_timestamp('08:30:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('20/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('20/04/2023','dd/mm/yyyy'), to_timestamp('09:10:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('20/04/2023','dd/mm/yyyy'), to_timestamp('08:55:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('20/04/2023','dd/mm/yyyy'), to_timestamp('09:20:00','hh24:mi:ss'), to_timestamp('17:25:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('20/04/2023','dd/mm/yyyy'), to_timestamp('08:35:00','hh24:mi:ss'), to_timestamp('17:05:00','hh24:mi:ss') from dual union all
select 1, 'John Doe', to_date('21/04/2023','dd/mm/yyyy'), to_timestamp('08:40:00','hh24:mi:ss'), to_timestamp('17:10:00','hh24:mi:ss') from dual union all
select 2, 'Jane Smith', to_date('21/04/2023','dd/mm/yyyy'), to_timestamp('09:15:00','hh24:mi:ss'), to_timestamp('16:50:00','hh24:mi:ss') from dual union all
select 3, 'Alice Johnson', to_date('21/04/2023','dd/mm/yyyy'), to_timestamp('08:45:00','hh24:mi:ss'), to_timestamp('17:15:00','hh24:mi:ss') from dual union all
select 4, 'Bob Brown', to_date('21/04/2023','dd/mm/yyyy'), to_timestamp('09:10:00','hh24:mi:ss'), to_timestamp('17:00:00','hh24:mi:ss') from dual union all
select 5, 'Charlie Davis', to_date('21/04/2023','dd/mm/yyyy'), to_timestamp('08:50:00','hh24:mi:ss'), to_timestamp('17:20:00','hh24:mi:ss') from dual;

commit;

select employee_id,employee_name,attendance_date,
to_char(clock_in_time,'hh24:mi:ss') as clock_in_time,
to_char(clock_out_time,'hh24:mi:ss') as clock_out_time
from attendance;

/*
The goal is to identify top 3 employees with 
the most frequent late arrivals (after 9:00 AM) 
and early departures (before 5:00 PM).
*/

with uncommitted as (select a.*,
count(case
when clock_in_time > to_date('09:00','hh24:mi') then 1
end) over(partition by employee_id) as late_arrival
,count(case
when clock_out_time < to_date('17:00','hh24:mi') then 1
end) over(partition by employee_id) as early_departure
from attendance a)
select distinct employee_name, late_arrival, early_departure from uncommitted
order by late_arrival desc, early_departure desc
fetch first 3 rows only;