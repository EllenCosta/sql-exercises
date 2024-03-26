/*
Write a SQL query to identify skills, 
list the top two most proficient employees for each skill.
Create a table showing skills ,average proficiency, 
along with the names and proficiency levels 
of the top two employees in those skills.
*/ 

with ranked as (
select skill, 
avg(proficiency) over(partition by skill) as avg_prof, 
rank() over(partition by skill order by skill, proficiency desc) as rank,
name, proficiency
from employees),
ranked1st as (
select * from ranked where rank = 1
),
ranked2nd as (
select * from ranked where rank = 2
)
select r1.skill as "Skill", r1.avg_prof as "Average Proficiency", 
r1.name as "Top Employee 1", r1.proficiency as "Proficiency 1",
r2.name as "Top Employee 2", r2.proficiency as "Proficiency 2"
from ranked1st r1
join ranked2nd r2
on r1.skill = r2.skill;