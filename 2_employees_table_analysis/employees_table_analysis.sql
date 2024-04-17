create table employees (
id int,
name varchar2(20),
skill varchar2(20),
proficiency number
);

insert into employees
select 1,'John Doe','SQL',4 from dual union all
select 2,'Jane Smith','SQL',3 from dual union all
select 3,'Alice Johnson','Python',2 from dual union all
select 4,'Bob Brown','Python',5 from dual union all
select 5,'Charlie Davis','Data Analysis',3 from dual union all
select 6,'Diana Evans','Data Analysis',4 from dual union all
select 7,'Frank Green','Machine Learning',2 from dual union all
select 8,'Grace Hall','Machine Learning',3 from dual union all
select 9,'Henry Irving','Project Management',5 from dual union all
select 10,'Isabel Jackson','Project Management',4 from dual union all
select 11,'Kyle Larson','SQL',2 from dual union all
select 12,'Liam Morgan','Python',3 from dual union all
select 13,'Mia Nelson','Data Analysis',5 from dual union all
select 14,'Noah O''Donnell','Machine Learning',4 from dual union all
select 15,'Olivia Parker','Project Management',3 from dual union all
select 16,'Peter Quinn','SQL',5 from dual union all
select 17,'Quincy Roberts','Python',4 from dual union all
select 18,'Rachel Stevens','Data Analysis',2 from dual union all
select 19,'Samuel Turner','Machine Learning',1 from dual union all
select 20,'Tina Underwood','Project Management',2 from dual;

commit;

select * from employees;

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