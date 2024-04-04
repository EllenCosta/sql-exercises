/*
Construct a summary table that shows 
the total number of matches played, 
the number of wins and 
the number of losses for each team 
based on the match outcomes provided.
*/

with cols_union as (
select team_1 as teams from icc_world_cup
union all
select team_2 as teams from icc_world_cup),

team_matches as (
select distinct teams, 
count(teams) as matches
from cols_union 
group by teams
order by teams),

wins as (
select distinct winner,
count(winner) as wins
from icc_world_cup
group by winner
order by winner
)

select tm.teams, tm.matches, nvl(w.wins,0) as wins,
tm.matches - nvl(w.wins,0) as losses
from team_matches tm
left join wins w
on tm.teams = w.winner;