create table players (
player_id int,
group_id int,
constraint pk_player_id primary key (player_id)
);

create table matches (
match_id int,
first_player int,
second_player int,
first_score int,
second_score int,
constraint pk_match_id primary key (match_id),
constraint fk_first_player foreign key (first_player)
references players (player_id),
constraint fk_second_player foreign key (second_player)
references players (player_id)
);

insert into players
select 15, 1 from dual union all
select 25, 1 from dual union all
select 30, 1 from dual union all
select 45, 1 from dual union all
select 10, 2 from dual union all
select 35, 2 from dual union all
select 50, 2 from dual union all
select 20, 3 from dual union all
select 40, 3 from dual;

insert into matches
select 1, 15, 45, 3, 0 from dual union all
select 2, 30, 25, 1, 2 from dual union all
select 3, 30, 15, 2, 0 from dual union all
select 4, 40, 20, 5, 2 from dual union all
select 5, 35, 50, 1, 1 from dual;

commit;

select * from players;
select * from matches;

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