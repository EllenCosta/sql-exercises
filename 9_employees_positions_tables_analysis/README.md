- You are working with the human resources database of a company.
- Your task is to create a report that lists all job positions along with the names of employees holding these positions. 
- For positions that are not fully occupied, like where the number of employees is less than the total posts available, the report should indicate these as 'vacant'.  
- Write a SQL query to effectively match employees to their respective positions and identify any vacancies in each position.

# POSITIONS TABLE
|POSITION_ID|TITLE            |GROUPS|LEVELS|PAYSCALE|TOTALPOST|
|-----------|-----------------|------|------|--------|---------|
|1          |General Manager  |A     |l-15  |10000   |1        |
|2          |Manager          |B     |l-14  |9000    |5        |
|3          |Assistant Manager|C     |l-13  |8000    |10       |

# EMPLOYEES TABLE
|EMPLOYEE_ID|NAME              |POSITION_ID|
|-----------|------------------|-----------|
|1          |John Smith        |1          |
|2          |Jane Doe          |2          |
|3          |Michael Brown     |2          |
|4          |Emily Johnson     |2          |
|5          |William Lee       |3          |
|6          |Jessica Clark     |3          |
|7          |Christopher Harris|3          |
|8          |Olivia Wilson     |3          |
|9          |Daniel Martinez   |3          |
|10         |Sophia Miller     |3          |

# DESIRED OUTPUT
|TITLE            |NAME              |
|-----------------|------------------|
|General Manager  |John Smith        |
|Manager          |Emily Johnson     |
|Manager          |Michael Brown     |
|Manager          |Jane Doe          |
|Manager          |VACANT            |
|Manager          |VACANT            |
|Assistant Manager|Daniel Martinez   |
|Assistant Manager|Olivia Wilson     |
|Assistant Manager|Christopher Harris|
|Assistant Manager|Jessica Clark     |
|Assistant Manager|Sophia Miller     |
|Assistant Manager|William Lee       |
|Assistant Manager|VACANT            |
|Assistant Manager|VACANT            |
|Assistant Manager|VACANT            |
|Assistant Manager|VACANT            |
