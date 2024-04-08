create table players (
player_id int,
group_id int,
constraint pk_player_id primary key (player_id)
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

insert into matches
select 1, 15, 45, 3, 0 from dual union all
select 2, 30, 25, 1, 2 from dual union all
select 3, 30, 15, 2, 0 from dual union all
select 4, 40, 20, 5, 2 from dual union all
select 5, 35, 50, 1, 1 from dual;

commit;

select * from players;
select * from matches;