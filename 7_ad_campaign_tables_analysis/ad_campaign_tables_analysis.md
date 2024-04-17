> As part of HackerAd's advertising system analytics, they need a list of the customers who have the most failures and successes in ad campaigns.
• There should be exactly two rows that contain type, customer, campaign, total.
• type contains 'success' in the first row and 'failure' in the second. These relate to `events.status`.
• customer is the `customers.first_name` and `customers.last_name`, separated by a single space.
• campaign is a comma-separated list of `campaigns.name` that are associated with the customer, ordered ascending.
• total is the number of associated events.
• Report only 2 customers, the two with the most successful and the most failing campaigns.

# CUSTOMERS TABLE
|CUSTOMER_ID|FIRST_NAME|LAST_NAME |
|-----------|----------|----------|
|1          |Carolyn   |O'Lunny   |
|2          |Matteo    |Husthwaite|
|3          |Melessa   |Rowesby   |

# CAMPAIGNS TABLE
|CAMPAIGN_ID|CUSTOMER_ID|NAME                 |
|-----------|-----------|---------------------|
|2          |1          |Overcoming Challenges|
|4          |1          |Business Rules       |
|3          |2          |YUI                  |
|1          |3          |Quantitative Finance |
|5          |3          |MMC                  |

# EVENTS TABLE
|CAMPAIGN_ID|STATUS |
|-----------|-------|
|1          |success|
|1          |success|
|2          |success|
|2          |success|
|2          |success|
|2          |success|
|2          |success|
|3          |success|
|3          |success|
|3          |success|
|4          |success|
|4          |success|
|4          |failure|
|4          |failure|
|5          |failure|
|5          |failure|
|5          |failure|
|5          |failure|
|5          |failure|
|5          |failure|
|4          |success|
|5          |success|
|5          |success|
|1          |failure|
|1          |failure|
|1          |failure|
|2          |failure|
|3          |failure|

# DESIRED OUTPUT
|TYPE   |CUSTOMER       |CAMPAIGN                            |TOTAL|
|-------|---------------|------------------------------------|-----|
|success|Carolyn O'Lunny|Business Rules,Overcoming Challenges|8    |
|failure|Melessa Rowesby|MMC,Quantitative Finance            |9    |
