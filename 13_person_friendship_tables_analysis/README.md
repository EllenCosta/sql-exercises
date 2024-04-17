- write a sql query to find personID, name, number of friends, sum of friends of person who have friends with total score greater than 100.

# PERSON TABLE
|PERSON_ID|NAME |EMAIL                |SCORE|
|---------|-----|---------------------|-----|
|1        |Alice|alice2018@hotmail.com|88   |
|2        |Bob  |bob2018@hotmail.com  |11   |
|3        |Davis|davis2018@hotmail.com|27   |
|4        |Tara |tara2018@hotmail.com |45   |
|5        |John |john2018@hotmail.com |63   |

# FRIENDSHIP TABLE
|PERSON_ID|FRIEND_ID|
|---------|---------|
|1        |2        |
|1        |3        |
|2        |1        |
|2        |3        |
|3        |5        |
|4        |2        |
|4        |3        |
|4        |5        |

# DESIRED OUTPUT
|PERSON_ID|PERSON_NAME|NUMBER_OF_FRIENDS|FRIENDS_SCORE_GREATER_100|
|---------|-----------|-----------------|-------------------------|
|2        |Bob        |3                |160                      |
|3        |Davis      |4                |207                      |
|4        |Tara       |3                |101                      |
