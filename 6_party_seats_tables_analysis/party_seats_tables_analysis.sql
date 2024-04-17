create table candidates (
candidate_id int,
gender varchar2(2),
age int,
party varchar2(26),
constraint pk_cadidate_id primary key (candidate_id)
);

create table results (
constituency_id int,
candidate_id int,
votes int,
constraint fk_candidate_id foreign key (candidate_id) 
references candidates (candidate_id)
);

insert into candidates
select 1, 'M', 55, 'Democratic' from dual union all
select 2, 'M', 51, 'Democratic' from dual union all
select 3, 'F', 62, 'Republic' from dual union all
select 4, 'M', 60, 'Republic' from dual union all
select 5, 'F', 61, 'Republic' from dual union all
select 6, 'F', 58, 'Republic' from dual;

insert into results
select 1, 1, 847529 from dual union all
select 1, 4, 283409 from dual union all
select 2, 2, 293841 from dual union all
select 2, 5, 394385 from dual union all
select 3, 3, 429084 from dual union all
select 3, 6, 303890 from dual;

commit;

select * from candidates;
select * from results;

/*
Given a database of the results of an election, 
find the number of seats won by each party. 
There are some rules to going about this:

- There are many constituencies in a state and many candidates 
who are contesting the election from each constituency.
- Each candidate belongs to a party.
- The candidate with the maximum number of votes in a given constituency 
wins for that constituency.
- The output should be in the following format: party_seats_won
- The ordering should be in the order of seats won in descending order.
*/

with max_votes as(
select c.candidate_id, c.gender, c.age, c.party, r.constituency_id, r.votes,
rank() over(partition by r.constituency_id order by r.votes desc) as max_votes
from candidates c
join results r
on c.candidate_id = r.candidate_id)
select party || ' won ' || count(party) || ' seat(s).' as party_seats_won
from max_votes
where max_votes = 1
group by party;