- As part of HackerPolls election exit poll analytics, a team needs a list of candidates and their top 3 vote totals and the states where they occurred.
- The result should be in the following format: __candidate_name, 1st_place, 2nd_place, 3rd_place__.
- Concatenate the candidates first and last names with a space between them.
- 1st_place, 2nd_place, 3rd_place are comma-separated 
- US state names and numbers of votes in a format "__%statename% (%votes%)__", for example, "__New York (23)__".
- Results should be sorted __ascending__ by candidate_name.

# CANDIDATES TABLE
|CANDIDATE_ID|FIRST_NAME|LAST_NAME|
|------------|----------|---------|
|1           |Davide    |Kentish  |
|2           |Thorstein |Bridge   |

# RESULTS TABLE
|CANDIDATE_ID|STATE     |
|------------|----------|
|1           |Alabama   |
|1           |Alabama   |
|1           |California|
|1           |California|
|1           |California|
|1           |California|
|1           |California|
|2           |California|
|2           |California|
|2           |New York  |
|2           |New York  |
|2           |Texas     |
|2           |Texas     |
|2           |Texas     |
|1           |New York  |
|1           |Texas     |
|1           |Texas     |
|1           |Texas     |
|2           |California|
|2           |Alabama   |

# DESIRED OUTPUT 
### SEPARATED BY COLUMNS
|CANDIDATE_NAME  |1st_place               |2nd_place   |3rd_place  |
|----------------|------------------------|------------|-----------|
|Davide Kentish  |California (5)          |Texas (3)   |Alabama (2)|
|Thorstein Bridge|California (3),Texas (3)|New York (2)|Alabama (1)|

### GROUPED IN ONE COLUMN
|CANDIDATE_NAME  |TOP 3 VOTE TOTALS                                                                     |
|----------------|--------------------------------------------------------------------------------------|
|Davide Kentish  |1st place: California (5). 2nd place: Texas (3). 3rd place: Alabama (2).              |
|Thorstein Bridge|1st place: California (3), Texas (3). 2nd place: New York (2). 3rd place: Alabama (1).|
