create table candidates (
candidate_id int,
first_name varchar2(26),
last_name varchar2(26),
constraint pk_candidate_id primary key (candidate_id)
);

create table results (
candidate_id int,
state varchar2(26),
constraint fk_candidate_id foreign key (candidate_id) 
references candidates (candidate_id)
);

insert into candidates
select 1, 'Davide', 'Kentish' from dual union all
select 2, 'Thorstein', 'Bridge' from dual;

insert into results
select 1, 'Alabama' from dual union all
select 1, 'Alabama' from dual union all
select 1, 'California' from dual union all
select 1, 'California' from dual union all
select 1, 'California' from dual union all
select 1, 'California' from dual union all
select 1, 'California' from dual union all
select 2, 'California' from dual union all
select 2, 'California' from dual union all
select 2, 'New York' from dual union all
select 2, 'New York' from dual union all
select 2, 'Texas' from dual union all
select 2, 'Texas' from dual union all
select 2, 'Texas' from dual union all
select 1, 'New York' from dual union all
select 1, 'Texas' from dual union all
select 1, 'Texas' from dual union all
select 1, 'Texas' from dual union all
select 2, 'California' from dual union all
select 2, 'Alabama' from dual;

commit;

select * from candidates;
select * from results;

/*
As part of HackerPoll’s election exit poll analytics, a team needs 
a list of candidates and their top 3 vote totals and the states 
where they occurred.

The result should be in the following format: 
candidate_name, 1st_place, 2nd_place, 3rd_place.

Concatenate the candidate’s first and last names with a space between them.

1st_place, 2nd_place, 3rd_place are comma-separated 

US state names and numbers of votes in a format "%statename% (%votes%)", 
for example, "New York (23)".

Results should be sorted ascending by candidate_name
*/

-- # SEPARATED BY DOTS
with table_join as (
select c.candidate_id, c.first_name, c.last_name, r.state,
count(*) over (partition by c.candidate_id, r.state) as count
from candidates c
join results r
on c.candidate_id = r.candidate_id
),

all_columns as (
select distinct first_name || ' ' || last_name as candidate_name,
case 
when dense_rank() over(partition by candidate_id order by count desc) = 1
then '1st place: ' || listagg(distinct state || ' (' || count || ')',', ') 
within group (order by candidate_id)

when dense_rank() over(partition by candidate_id order by count desc) = 2
then '2nd place: ' || listagg(distinct state || ' (' || count || ')',',' ) 
within group (order by candidate_id)

when dense_rank() over(partition by candidate_id order by count desc) = 3
then '3rd place: ' || listagg(distinct state || ' (' || count || ')',', ') 
within group (order by candidate_id)

end as top_3_states
from table_join
group by first_name || ' ' || last_name, candidate_id, count
)

select distinct candidate_name, listagg(top_3_states,'. ')
within group (order by candidate_name) || '.' as "TOP 3 VOTE TOTALS"
from all_columns
group by candidate_name
order by "TOP 3 VOTE TOTALS" asc;



-- # SEPARATED BY COLUMNS
with table_join as (
select c.candidate_id, c.first_name, c.last_name, r.state,
count(*) over (partition by c.candidate_id, r.state) as count
from candidates c
join results r
on c.candidate_id = r.candidate_id),

all_columns as (
select distinct first_name || ' ' || last_name as candidate_name, 
case 
when dense_rank() over(partition by candidate_id order by count desc) = 1
then listagg(distinct state || ' (' || count || ')',',') 
within group (order by candidate_id) end as "1st_place",
case 
when dense_rank() over(partition by candidate_id order by count desc) = 2
then listagg(distinct state || ' (' || count || ')',',') 

within group (order by candidate_id) end as "2nd_place",
case 
when dense_rank() over(partition by candidate_id order by count desc) = 3
then listagg(distinct state || ' (' || count || ')',',') 
within group (order by candidate_id) end as "3rd_place"
from table_join
group by first_name || ' ' || last_name, candidate_id, count)

select distinct candidate_name, max("1st_place") as "1st_place", 
max("2nd_place") as "2nd_place", max("3rd_place") as "3rd_place"
from all_columns
group by candidate_name;