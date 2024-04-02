create table candidates (
candidate_id int,
first_name varchar2(26),
last_name varchar2(26),
constraint pk_candidate_id primary key (candidate_id)
);

insert into candidates
select 1, 'Davide', 'Kentish' from dual union all
select 2, 'Thorstein', 'Bridge' from dual;

create table results (
candidate_id int,
state varchar2(26),
constraint fk_candidate_id foreign key (candidate_id) 
references candidates (candidate_id)
);

insert into results
select 1, 'Alabama' from dual union all
select 1, 'Alabama' from dual union all
select 1, 'California' from dual union all
select 1, 'California' from dual union all
select 1, 'California' from dual union all
select 1, 'California' from dual union all
select 1, 'California' from dual union all
select 2, 'California' from dual union all
select 2, 'California' from dual union all
select 2, 'New York' from dual union all
select 2, 'New York' from dual union all
select 2, 'Texas' from dual union all
select 2, 'Texas' from dual union all
select 2, 'Texas' from dual union all
select 1, 'New York' from dual union all
select 1, 'Texas' from dual union all
select 1, 'Texas' from dual union all
select 1, 'Texas' from dual union all
select 2, 'California' from dual union all
select 2, 'Alabama' from dual;

commit;

select * from candidates;
select * from results;