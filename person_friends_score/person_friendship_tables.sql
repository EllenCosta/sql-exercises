create table person (
person_id int,
name varchar2(26 char),
email varchar2(26 char),
score int,
constraint pk_person_id primary key (person_id)
);

insert into person
select 1, 'Alice', 'alice2018@hotmail.com', 88 from dual union all
select 2, 'Bob', 'bob2018@hotmail.com', 11 from dual union all
select 3, 'Davis', 'davis2018@hotmail.com', 27 from dual union all
select 4, 'Tara', 'tara2018@hotmail.com', 45 from dual union all
select 5, 'John', 'john2018@hotmail.com', 63 from dual;

create table friendship (
person_id int,
friend_id int,
constraint fk_person_id foreign key (person_id)
references person (person_id),
constraint fk_friend_id foreign key (friend_id)
references person (person_id)
);

insert into friendship
select 1, 2 from dual union all
select 1, 3 from dual union all
select 2, 1 from dual union all
select 2, 3 from dual union all
select 3, 5 from dual union all
select 4, 2 from dual union all
select 4, 3 from dual union all
select 4, 5 from dual;

commit;

select * from person;
select * from friendship;