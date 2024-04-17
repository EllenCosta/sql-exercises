- Write a SQL query to identify skills, list the top two most proficient employees for each skill.
- Create a table showing skills ,average proficiency, along with the names and proficiency levels of the top two employees in those skills.

# EMPLOYEES TABLE
|ID |NAME          |SKILL             |PROFICIENCY|
|---|--------------|------------------|-----------|
|1  |John Doe      |SQL               |4          |
|2  |Jane Smith    |SQL               |3          |
|3  |Alice Johnson |Python            |2          |
|4  |Bob Brown     |Python            |5          |
|5  |Charlie Davis |Data Analysis     |3          |
|6  |Diana Evans   |Data Analysis     |4          |
|7  |Frank Green   |Machine Learning  |2          |
|8  |Grace Hall    |Machine Learning  |3          |
|9  |Henry Irving  |Project Management|5          |
|10 |Isabel Jackson|Project Management|4          |
|11 |Kyle Larson   |SQL               |2          |
|12 |Liam Morgan   |Python            |3          |
|13 |Mia Nelson    |Data Analysis     |5          |
|14 |Noah O'Donnell|Machine Learning  |4          |
|15 |Olivia Parker |Project Management|3          |
|16 |Peter Quinn   |SQL               |5          |
|17 |Quincy Roberts|Python            |4          |
|18 |Rachel Stevens|Data Analysis     |2          |
|19 |Samuel Turner |Machine Learning  |1          |
|20 |Tina Underwood|Project Management|2          |

# DESIRED OUTPUT
|Skill             |Average Proficiency|Top Employee 1|Proficiency 1|Top Employee 2|Proficiency 2|
|------------------|-------------------|--------------|-------------|--------------|-------------|
|Data Analysis     |3.5                |Mia Nelson    |5            |Diana Evans   |4            |
|Machine Learning  |2.5                |Noah O'Donnell|4            |Grace Hall    |3            |
|Project Management|3.5                |Henry Irving  |5            |Isabel Jackson|4            |
|Python            |3.5                |Bob Brown     |5            |Quincy Roberts|4            |
|SQL               |3.5                |Peter Quinn   |5            |John Doe      |4            |
