- Create a summary table for each individual based on their floor visits and resource usage. 
- The table should include the most visited floor, the total number of visits, and a list of all distinct resources used by each individual.

# ENTRIES TABLE
|NAME|ADDRESS  |EMAIL       |FLOOR|RESOURCES|
|----|---------|------------|-----|---------|
|A   |Bangalore|A@gmail.com |1    |CPU      |
|A   |Bangalore|A1@gmail.com|1    |CPU      |
|A   |Bangalore|A2@gmail.com|2    |DESKTOP  |
|B   |Bangalore|B@gmail.com |2    |DESKTOP  |
|B   |Bangalore|B1@gmail.com|2    |DESKTOP  |
|B   |Bangalore|B2@gmail.com|1    |MONITOR  |

# DESIRED OUTPUT
|NAME|MOST_VISITED|NUMBER_VISITS|RESOURCES_USED  |
|----|------------|-------------|----------------|
|A   |1           |2            |CPU, DESKTOP    |
|B   |2           |2            |DESKTOP, MONITOR|
