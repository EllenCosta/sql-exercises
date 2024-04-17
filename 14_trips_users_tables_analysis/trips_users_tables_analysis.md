> Write a sql query to find the cancellation rate of requests with unbanned users (both client and driver must not be banned) each day between "2013-10-01" and "2023-10-03" round cancellation rate to two decimal points.
The cancellation rate is computed by dividing the number of canceled requests (by client or driver) with unbanned users by the total number of requests with unbanned users on that day.

# USERS TABLE 
|USER_ID|BANNED|ROLE  |
|-------|------|------|
|1      |No    |client|
|2      |Yes   |client|
|3      |No    |client|
|4      |No    |client|
|10     |No    |driver|
|11     |No    |driver|
|12     |No    |driver|
|13     |No    |driver|

# TRIPS TABLE 
|TRIP_ID|CLIENT_ID|DRIVER_ID|CITY_ID|STATUS             |REQUEST_AT|
|-------|---------|---------|-------|-------------------|----------|
|1      |1        |10       |1      |completed          |01-OCT-13 |
|2      |2        |11       |1      |cancelled_by_driver|01-OCT-13 |
|3      |3        |12       |6      |completed          |01-OCT-13 |
|4      |4        |13       |6      |cancelled_by_client|01-OCT-13 |
|5      |1        |10       |1      |completed          |02-OCT-13 |
|6      |2        |11       |6      |completed          |02-OCT-13 |
|7      |3        |12       |6      |completed          |02-OCT-13 |
|8      |2        |12       |12     |completed          |03-OCT-13 |
|9      |3        |10       |12     |completed          |03-OCT-13 |
|10     |4        |13       |12     |cancelled_by_driver|03-OCT-13 |

# DESIRED OUTPUT
|REQUEST_AT|REQUESTS|CANCELLED|CANCELLATION_RATE|
|----------|--------|---------|-----------------|
|03-OCT-13 |2       |1        |50%              |
|01-OCT-13 |3       |1        |33.33%           |
|02-OCT-13 |2       |0        |0%               |
