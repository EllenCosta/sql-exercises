- Display the average billing amount for each customer between 2019 to 2021, assume the value of the billing amount being $0 if nothing is billed for the particular year of that customer.

# BILLING TABLE
|CUSTOMER_ID|CUSTOMER_NAME|BILLING_ID|BILLING_CREATION_DATE|BILLED_AMOUNT|
|-----------|-------------|----------|---------------------|-------------|
|1          |A            |id1       |10-OCT-20            |100          |
|1          |A            |id2       |11-NOV-20            |150          |
|1          |A            |id3       |12-NOV-21            |100          |
|2          |B            |id4       |10-NOV-19            |150          |
|2          |B            |id5       |11-NOV-20            |200          |
|2          |B            |id6       |12-NOV-21            |250          |
|3          |C            |id7       |01-JAN-18            |100          |
|3          |C            |id8       |05-JAN-19            |250          |
|3          |C            |id9       |06-JAN-21            |300          |

# DESIRED OUTPUT
|CUSTOMER_NAME|BILLING_CREATION_DATE|BILLED_AMOUNT|AVG_BILL|
|-------------|---------------------|-------------|--------|
|A            |10-OCT-20            |100          |87.5    |
|A            |11-NOV-20            |150          |87.5    |
|A            |12-NOV-21            |100          |87.5    |
|B            |10-NOV-19            |150          |200     |
|B            |11-NOV-20            |200          |200     |
|B            |12-NOV-21            |250          |200     |
|C            |01-JAN-18            |100          |137.5   |
|C            |05-JAN-19            |250          |137.5   |
|C            |06-JAN-21            |300          |137.5   |

# EXPLANATION
|CUSTOMER_NAME|BILLING_CREATION_DATE|BILLED                                     |
|-------------|---------------------|-------------------------------------------|
|A            |10-OCT-20            |nothing was billed for y19 of this customer|
|A            |11-NOV-20            |nothing was billed for y19 of this customer|
|A            |12-NOV-21            |nothing was billed for y19 of this customer|
|B            |10-NOV-19            |all 3 years of this customer were billed.  |
|B            |11-NOV-20            |all 3 years of this customer were billed.  |
|B            |12-NOV-21            |all 3 years of this customer were billed.  |
|C            |01-JAN-18            |nothing was billed for y20 of this customer|
|C            |05-JAN-19            |nothing was billed for y20 of this customer|
|C            |06-JAN-21            |nothing was billed for y20 of this customer|