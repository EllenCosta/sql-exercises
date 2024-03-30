create table results (
constituency_id int,
candidate_id int,
votes int,
constraint fk_candidate_id foreign key (candidate_id) 
references candidates (candidate_id)
);

insert into results
select 1, 1, 847529 from dual union all
select 1, 4, 283409 from dual union all
select 2, 2, 293841 from dual union all
select 2, 5, 394385 from dual union all
select 3, 3, 429084 from dual union all
select 3, 6, 303890 from dual;

commit;

select * from results;