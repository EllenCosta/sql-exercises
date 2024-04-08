/*
write a sql query to find the winner in each group.

the winner in each group is the player who scored 
the maximum total of points within the group.
in the case of tie, the lowest player_id wins.
*/

with player_score as (
select first_player as player_id, first_score as score 
from matches
union all
select second_player, second_score 
from matches
),

max_score as (
select p.group_id, ps.player_id, ps.score,
rank() over(partition by p.group_id order by ps.score desc, ps.player_id) as rank
from player_score ps
join players p
on ps.player_id = p.player_id)

select group_id as "GROUP", player_id as winner, score
from max_score
where rank = 1;