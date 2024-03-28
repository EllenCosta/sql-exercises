create table flights (
airline_name varchar2(26),
flight_number varchar2(26),
scheduled_departure date,
actual_departure date,
delay_reason varchar2(26)
);


insert into flights
select 'Airline A','AA101',to_date('01/04/2023 08:00','DD/MM/YYYY HH24:MI'),to_date('01/04/2023 08:30','DD/MM/YYYY HH24:MI'),'Weather' from dual union all
select 'Airline B','BB202',to_date('01/04/2023 09:00','DD/MM/YYYY HH24:MI'),to_date('01/04/2023 09:45','DD/MM/YYYY HH24:MI'),'Technical Issues' from dual union all
select 'Airline A','AA103',to_date('01/04/2023 10:00','DD/MM/YYYY HH24:MI'),to_date('01/04/2023 10:15','DD/MM/YYYY HH24:MI'),'Operational' from dual union all
select 'Airline C','CC303',to_date('01/04/2023 11:00','DD/MM/YYYY HH24:MI'),to_date('01/04/2023 11:00','DD/MM/YYYY HH24:MI'),NULL from dual union all
select 'Airline A','AA104',to_date('01/04/2023 12:00','DD/MM/YYYY HH24:MI'),to_date('01/04/2023 12:50','DD/MM/YYYY HH24:MI'),'Air Traffic Control' from dual union all
select 'Airline B','BB205',to_date('01/04/2023 13:00','DD/MM/YYYY HH24:MI'),to_date('01/04/2023 13:30','DD/MM/YYYY HH24:MI'),'Weather' from dual union all
select 'Airline A','AA106',to_date('01/04/2023 14:00','DD/MM/YYYY HH24:MI'),to_date('01/04/2023 14:05','DD/MM/YYYY HH24:MI'),NULL from dual union all
select 'Airline C','CC306',to_date('01/04/2023 15:00','DD/MM/YYYY HH24:MI'),to_date('01/04/2023 15:20','DD/MM/YYYY HH24:MI'),'Technical Issues' from dual union all
select 'Airline A','AA107',to_date('02/04/2023 08:00','DD/MM/YYYY HH24:MI'),to_date('02/04/2023 08:20','DD/MM/YYYY HH24:MI'),'Operational' from dual union all
select 'Airline B','BB206',to_date('02/04/2023 09:00','DD/MM/YYYY HH24:MI'),to_date('02/04/2023 09:35','DD/MM/YYYY HH24:MI'),'Weather' from dual union all
select 'Airline C','CC307',to_date('02/04/2023 10:00','DD/MM/YYYY HH24:MI'),to_date('02/04/2023 10:30','DD/MM/YYYY HH24:MI'),'Air Traffic Control' from dual union all
select 'Airline A','AA108',to_date('02/04/2023 11:00','DD/MM/YYYY HH24:MI'),to_date('02/04/2023 11:45','DD/MM/YYYY HH24:MI'),'Technical Issues' from dual union all
select 'Airline B','BB207',to_date('02/04/2023 12:00','DD/MM/YYYY HH24:MI'),to_date('02/04/2023 12:25','DD/MM/YYYY HH24:MI'),'Operational' from dual union all
select 'Airline C','CC308',to_date('02/04/2023 13:00','DD/MM/YYYY HH24:MI'),to_date('02/04/2023 13:15','DD/MM/YYYY HH24:MI'),'Weather' from dual union all
select 'Airline A','AA109',to_date('02/04/2023 14:00','DD/MM/YYYY HH24:MI'),to_date('02/04/2023 14:30','DD/MM/YYYY HH24:MI'),'Air Traffic Control' from dual union all
select 'Airline B','BB208',to_date('02/04/2023 15:00','DD/MM/YYYY HH24:MI'),to_date('02/04/2023 15:40','DD/MM/YYYY HH24:MI'),'Technical Issues' from dual union all
select 'Airline C','CC309',to_date('02/04/2023 16:00','DD/MM/YYYY HH24:MI'),to_date('02/04/2023 16:20','DD/MM/YYYY HH24:MI'),'Operational' from dual union all
select 'Airline A','AA110',to_date('02/04/2023 17:00','DD/MM/YYYY HH24:MI'),to_date('02/04/2023 17:15','DD/MM/YYYY HH24:MI'),'Weather' from dual union all
select 'Airline B','BB209',to_date('02/04/2023 18:00','DD/MM/YYYY HH24:MI'),to_date('02/04/2023 18:30','DD/MM/YYYY HH24:MI'),'Air Traffic Control' from dual union all
select 'Airline C','CC310',to_date('02/04/2023 19:00','DD/MM/YYYY HH24:MI'),to_date('02/04/2023 19:05','DD/MM/YYYY HH24:MI'),NULL from dual union all
select 'Airline A','AA111',to_date('03/04/2023 08:00','DD/MM/YYYY HH24:MI'),to_date('03/04/2023 08:20','DD/MM/YYYY HH24:MI'),'Weather' from dual union all
select 'Airline A','AA112',to_date('03/04/2023 09:00','DD/MM/YYYY HH24:MI'),to_date('03/04/2023 09:30','DD/MM/YYYY HH24:MI'),'Weather' from dual union all
select 'Airline A','AA113',to_date('03/04/2023 10:00','DD/MM/YYYY HH24:MI'),to_date('03/04/2023 10:10','DD/MM/YYYY HH24:MI'),'Operational' from dual union all
select 'Airline B','BB210',to_date('03/04/2023 11:00','DD/MM/YYYY HH24:MI'),to_date('03/04/2023 11:15','DD/MM/YYYY HH24:MI'),'Technical Issues' from dual union all
select 'Airline B','BB211',to_date('03/04/2023 12:00','DD/MM/YYYY HH24:MI'),to_date('03/04/2023 12:30','DD/MM/YYYY HH24:MI'),'Weather' from dual union all
select 'Airline B','BB212',to_date('03/04/2023 13:00','DD/MM/YYYY HH24:MI'),to_date('03/04/2023 13:05','DD/MM/YYYY HH24:MI'),'Weather' from dual union all
select 'Airline C','CC311',to_date('03/04/2023 14:00','DD/MM/YYYY HH24:MI'),to_date('03/04/2023 14:25','DD/MM/YYYY HH24:MI'),'Technical Issues' from dual union all
select 'Airline C','CC312',to_date('03/04/2023 15:00','DD/MM/YYYY HH24:MI'),to_date('03/04/2023 15:30','DD/MM/YYYY HH24:MI'),'Technical Issues' from dual union all
select 'Airline C','CC313',to_date('03/04/2023 16:00','DD/MM/YYYY HH24:MI'),to_date('03/04/2023 16:10','DD/MM/YYYY HH24:MI'),'Air Traffic Control' from dual;

commit;

select airline_name, flight_number, to_char(scheduled_departure,'DD/MM/YYYY HH24:MI') as scheduled_departure, 
to_char(actual_departure,'DD/MM/YYYY HH24:MI') as actual_departure, delay_reason from flights;