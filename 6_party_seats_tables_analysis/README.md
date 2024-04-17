- Given a database of the results of an election, find the number of seats won by each party. 
# There are some rules to going about this:
- There are many constituencies in a state and many candidates who are contesting the election from each constituency.
- Each candidate belongs to a party.
- The candidate with the maximum number of votes in a given constituency wins for that constituency.
- The output should be in the following format: party_seats_won
- The ordering should be in the order of seats won in descending order.

# CANDIDATES TABLE
|CANDIDATE_ID|GENDER|AGE|PARTY     |
|------------|------|---|----------|
|1           |M     |55 |Democratic|
|2           |M     |51 |Democratic|
|3           |F     |62 |Republic  |
|4           |M     |60 |Republic  |
|5           |F     |61 |Republic  |
|6           |F     |58 |Republic  |

# RESULTS TABLE
|CONSTITUENCY_ID|CANDIDATE_ID|VOTES |
|---------------|------------|------|
|1              |1           |847529|
|1              |4           |283409|
|2              |2           |293841|
|2              |5           |394385|
|3              |3           |429084|
|3              |6           |303890|
|1              |1           |847529|
|1              |4           |283409|
|2              |2           |293841|
|2              |5           |394385|
|3              |3           |429084|
|3              |6           |303890|

# DESIRED OUTPUT
|PARTY_SEATS_WON          |
|-------------------------|
|Democratic won 2 seat(s).|
|Republic won 4 seat(s).  |
