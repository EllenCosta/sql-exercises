- The goal is to identify top 3 employees with the most frequent late arrivals (after 9:00 AM) and early departures (before 5:00 PM).

# ATTENDANCE TABLE
|EMPLOYEE_ID|EMPLOYEE_NAME|ATTENDANCE_DATE|CLOCK_IN_TIME|CLOCK_OUT_TIME|
|-----------|-------------|---------------|-------------|--------------|
|1          |John Doe     |01-APR-23      |08:45:00     |17:15:00      |
|2          |Jane Smith   |01-APR-23      |09:10:00     |17:20:00      |
|3          |Alice Johnson|01-APR-23      |09:05:00     |16:55:00      |
|4          |Bob Brown    |01-APR-23      |08:55:00     |17:05:00      |
|5          |Charlie Davis|01-APR-23      |08:30:00     |16:45:00      |
|1          |John Doe     |02-APR-23      |08:40:00     |17:10:00      |
|2          |Jane Smith   |02-APR-23      |09:15:00     |17:05:00      |
|3          |Alice Johnson|02-APR-23      |08:55:00     |17:00:00      |
|4          |Bob Brown    |02-APR-23      |09:20:00     |17:25:00      |
|5          |Charlie Davis|02-APR-23      |08:35:00     |17:05:00      |
|1          |John Doe     |03-APR-23      |08:50:00     |17:20:00      |
|2          |Jane Smith   |03-APR-23      |09:05:00     |16:50:00      |
|3          |Alice Johnson|03-APR-23      |08:45:00     |17:15:00      |
|4          |Bob Brown    |03-APR-23      |09:10:00     |17:00:00      |
|5          |Charlie Davis|03-APR-23      |08:40:00     |17:10:00      |
|1          |John Doe     |04-APR-23      |08:55:00     |17:25:00      |
|2          |Jane Smith   |04-APR-23      |09:20:00     |17:15:00      |
|3          |Alice Johnson|04-APR-23      |08:50:00     |17:05:00      |
|4          |Bob Brown    |04-APR-23      |09:25:00     |17:40:00      |
|5          |Charlie Davis|04-APR-23      |08:45:00     |17:20:00      |
|1          |John Doe     |05-APR-23      |08:45:00     |17:15:00      |
|2          |Jane Smith   |05-APR-23      |09:05:00     |17:00:00      |
|3          |Alice Johnson|05-APR-23      |08:50:00     |16:45:00      |
|4          |Bob Brown    |05-APR-23      |09:15:00     |17:30:00      |
|5          |Charlie Davis|05-APR-23      |08:30:00     |17:00:00      |
|1          |John Doe     |06-APR-23      |08:55:00     |17:25:00      |
|2          |Jane Smith   |06-APR-23      |09:20:00     |17:15:00      |
|3          |Alice Johnson|06-APR-23      |08:50:00     |17:05:00      |
|4          |Bob Brown    |06-APR-23      |09:25:00     |17:40:00      |
|5          |Charlie Davis|06-APR-23      |08:45:00     |17:20:00      |
|1          |John Doe     |07-APR-23      |08:45:00     |17:15:00      |
|2          |Jane Smith   |07-APR-23      |09:05:00     |17:00:00      |
|3          |Alice Johnson|07-APR-23      |08:50:00     |16:45:00      |
|4          |Bob Brown    |07-APR-23      |09:15:00     |17:30:00      |
|5          |Charlie Davis|07-APR-23      |08:30:00     |17:00:00      |
|1          |John Doe     |08-APR-23      |08:50:00     |17:20:00      |
|2          |Jane Smith   |08-APR-23      |09:15:00     |17:30:00      |
|3          |Alice Johnson|08-APR-23      |08:55:00     |17:10:00      |
|4          |Bob Brown    |08-APR-23      |09:00:00     |17:05:00      |
|5          |Charlie Davis|08-APR-23      |08:40:00     |17:15:00      |
|1          |John Doe     |09-APR-23      |08:45:00     |17:25:00      |
|2          |Jane Smith   |09-APR-23      |09:10:00     |17:00:00      |
|3          |Alice Johnson|09-APR-23      |09:05:00     |16:50:00      |
|4          |Bob Brown    |09-APR-23      |08:55:00     |17:20:00      |
|5          |Charlie Davis|09-APR-23      |08:35:00     |17:05:00      |
|1          |John Doe     |10-APR-23      |08:40:00     |17:15:00      |
|2          |Jane Smith   |10-APR-23      |09:20:00     |17:10:00      |
|3          |Alice Johnson|10-APR-23      |08:50:00     |17:00:00      |
|4          |Bob Brown    |10-APR-23      |09:15:00     |17:30:00      |
|5          |Charlie Davis|10-APR-23      |08:30:00     |16:55:00      |

# DESIRED OUTPUT
|EMPLOYEE_NAME|LATE_ARRIVAL|EARLY_DEPARTURE|
|-------------|------------|---------------|
|Jane Smith   |21          |3              |
|Bob Brown    |17          |0              |
|Alice Johnson|2           |7              |
