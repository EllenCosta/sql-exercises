- Write a SQL query to identify airlines with the most frequent delays and categorize the common reasons for these delays. 
- Display the airline name, count of delayed flights, and the most common delay reason.

# FLIGHTS TABLE
|AIRLINE_NAME|FLIGHT_NUMBER|SCHEDULED_DEPARTURE|ACTUAL_DEPARTURE|DELAY_REASON       |
|------------|-------------|-------------------|----------------|-------------------|
|Airline A   |AA101        |01/04/2023 08:00   |01/04/2023 08:30|Weather            |
|Airline B   |BB202        |01/04/2023 09:00   |01/04/2023 09:45|Technical Issues   |
|Airline A   |AA103        |01/04/2023 10:00   |01/04/2023 10:15|Operational        |
|Airline C   |CC303        |01/04/2023 11:00   |01/04/2023 11:00| -                 |
|Airline A   |AA104        |01/04/2023 12:00   |01/04/2023 12:50|Air Traffic Control|
|Airline B   |BB205        |01/04/2023 13:00   |01/04/2023 13:30|Weather            |
|Airline A   |AA106        |01/04/2023 14:00   |01/04/2023 14:05| -                 |
|Airline C   |CC306        |01/04/2023 15:00   |01/04/2023 15:20|Technical Issues   |
|Airline A   |AA107        |02/04/2023 08:00   |02/04/2023 08:20|Operational        |
|Airline B   |BB206        |02/04/2023 09:00   |02/04/2023 09:35|Weather            |
|Airline C   |CC307        |02/04/2023 10:00   |02/04/2023 10:30|Air Traffic Control|
|Airline A   |AA108        |02/04/2023 11:00   |02/04/2023 11:45|Technical Issues   |
|Airline B   |BB207        |02/04/2023 12:00   |02/04/2023 12:25|Operational        |
|Airline C   |CC308        |02/04/2023 13:00   |02/04/2023 13:15|Weather            |
|Airline A   |AA109        |02/04/2023 14:00   |02/04/2023 14:30|Air Traffic Control|
|Airline B   |BB208        |02/04/2023 15:00   |02/04/2023 15:40|Technical Issues   |
|Airline C   |CC309        |02/04/2023 16:00   |02/04/2023 16:20|Operational        |
|Airline A   |AA110        |02/04/2023 17:00   |02/04/2023 17:15|Weather            |
|Airline B   |BB209        |02/04/2023 18:00   |02/04/2023 18:30|Air Traffic Control|
|Airline C   |CC310        |02/04/2023 19:00   |02/04/2023 19:05| -                 |
|Airline A   |AA111        |03/04/2023 08:00   |03/04/2023 08:20|Weather            |
|Airline A   |AA112        |03/04/2023 09:00   |03/04/2023 09:30|Weather            |
|Airline A   |AA113        |03/04/2023 10:00   |03/04/2023 10:10|Operational        |
|Airline B   |BB210        |03/04/2023 11:00   |03/04/2023 11:15|Technical Issues   |
|Airline B   |BB211        |03/04/2023 12:00   |03/04/2023 12:30|Weather            |
|Airline B   |BB212        |03/04/2023 13:00   |03/04/2023 13:05|Weather            |
|Airline C   |CC311        |03/04/2023 14:00   |03/04/2023 14:25|Technical Issues   |
|Airline C   |CC312        |03/04/2023 15:00   |03/04/2023 15:30|Technical Issues   |
|Airline C   |CC313        |03/04/2023 16:00   |03/04/2023 16:10|Air Traffic Control|

# DESIRED OUTPUT
|AIRLINE_NAME|DELAYED_FLIGHTS|COMMON_REASON   |
|------------|---------------|----------------|
|Airline A   |10             |Weather         |
|Airline B   |9              |Weather         |
|Airline C   |7              |Technical Issues|
