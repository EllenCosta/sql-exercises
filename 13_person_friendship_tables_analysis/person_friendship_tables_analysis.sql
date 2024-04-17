create table person (
person_id int,
name varchar2(26 char),
email varchar2(26 char),
score int,
constraint pk_person_id primary key (person_id)
);

create table friendship (
person_id int,
friend_id int,
constraint fk_person_id foreign key (person_id)
references person (person_id),
constraint fk_friend_id foreign key (friend_id)
references person (person_id)
);

insert into person
select 1, 'Alice', 'alice2018@hotmail.com', 88 from dual union all
select 2, 'Bob', 'bob2018@hotmail.com', 11 from dual union all
select 3, 'Davis', 'davis2018@hotmail.com', 27 from dual union all
select 4, 'Tara', 'tara2018@hotmail.com', 45 from dual union all
select 5, 'John', 'john2018@hotmail.com', 63 from dual;

insert into friendship
select 1, 2 from dual union all
select 1, 3 from dual union all
select 2, 1 from dual union all
select 2, 3 from dual union all
select 3, 5 from dual union all
select 4, 2 from dual union all
select 4, 3 from dual union all
select 4, 5 from dual;

commit;

select * from person;
select * from friendship;

/*
write a sql query to find personID, name, 
number of friends, sum of friends of person 
who have friends with total score greater than 100.
*/

with uniting_ids as (
select person_id,friend_id from friendship
union all
select friend_id, person_id from friendship),

all_columns as (
select distinct ui.person_id, p.name as person_name,
count(distinct ui.friend_id) over (partition by ui.person_id) as number_of_friends,
case
when sum(distinct f.score) over (partition by ui.person_id) > 100 
then sum(distinct f.score) over (partition by ui.person_id)
else null
end as friends_score_greater_100
from person p
join uniting_ids ui
on p.person_id = ui.person_id
join person f
on f.person_id = ui.friend_id
order by ui.person_id)

select * 
from all_columns
where friends_score_greater_100 > 100;