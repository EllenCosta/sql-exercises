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