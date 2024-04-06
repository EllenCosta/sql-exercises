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