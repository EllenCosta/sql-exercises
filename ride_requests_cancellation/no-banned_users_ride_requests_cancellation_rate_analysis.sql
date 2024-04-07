/*
write a sql query to find the cancellation rate 
of requests with unbanned users 
(both client and driver must not be banned) 
each day between ""2013-10-01"" and ""2023-10-03"" 
round cancellation rate to two decimal points.

the cancellation rate is computed by dividing the 
number of canceled requests (by client or driver) 
with unbanned users by the total number of requests 
with unbanned users on that day.
*/

with client as (
select t.trip_id, t.client_id, t.driver_id, t.status, t.request_at, 
u.banned as client_banned
from trips t
join users u
on t.client_id = u.user_id
where u.banned = 'No'
order by t.trip_id),

driver as (
select t.trip_id, t.client_id, t.driver_id, t.status, t.request_at,
u.banned as driver_banned
from trips t
join users u
on t.driver_id = u.user_id
where u.banned ='No'
order by t.trip_id),

day_requests_and_cancelled as (
select c.request_at,
count(c.request_at) as requests,
sum(case
when c.status like '%cancelled%' then 1 else 0
end) as cancelled
from  client c
join driver d
on c.trip_id = d.trip_id
group by c.request_at)

select request_at,requests, cancelled,
round((cancelled/requests)*100,2) || '%' as cancellation_rate
from day_requests_and_cancelled;