- Write a sql query to find the winner in each group.
- The winner in each group is the player who scored the maximum total of points within the group.
- In case of tie, the lowest player_id wins.

# PLAYERS TABLE
|PLAYER_ID|GROUP_ID|
|---------|--------|
|15       |1       |
|25       |1       |
|30       |1       |
|45       |1       |
|10       |2       |
|35       |2       |
|50       |2       |
|20       |3       |
|40       |3       |

# MATCHES TABLE
|MATCH_ID|FIRST_PLAYER|SECOND_PLAYER|FIRST_SCORE|SECOND_SCORE|
|--------|------------|-------------|-----------|------------|
|1       |15          |45           |3          |0           |
|2       |30          |25           |1          |2           |
|3       |30          |15           |2          |0           |
|4       |40          |20           |5          |2           |
|5       |35          |50           |1          |1           |

# DESIRED OUTPUT
|GROUP|WINNER|SCORE|
|-----|------|-----|
|1    |15    |3    |
|2    |35    |1    |
|3    |40    |5    |
