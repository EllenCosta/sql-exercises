- Analyze the customer order data to determine the number of new and repeated clients for each order date.
- New Clients: These are customers who are placing an order for the first time. A customer is considered new on a particular date if they have no prior orders before that date.
- Repeated Clients: These are customers who have placed orders previously. A customer is considered a repeated client on a particular date if they have one or more orders before that date.
- The task is to count the number of new and repeated clients for each unique order date in the dataset. The expected output table summarizes this information, showing for each date the number of new clients and the number of repeated clients.

# CUSTOMER_ORDERS TABLE 
|ORDER_ID|CUSTOMER_ID|ORDER_DATE|ORDER_AMOUNT|
|--------|-----------|----------|------------|
|1       |100        |01-JAN-22 |2000        |
|2       |200        |01-JAN-22 |2500        |
|3       |300        |01-JAN-22 |2100        |
|4       |100        |02-JAN-22 |2000        |
|5       |400        |02-JAN-22 |2200        |
|6       |500        |02-JAN-22 |2700        |
|7       |100        |03-JAN-22 |3000        |
|8       |400        |03-JAN-22 |1000        |
|9       |600        |03-JAN-22 |3000        |

# DESIRED OUTPUT
|ORDER_DATE|NEW_CLIENTS|REPEATED_CLIENTS|
|----------|-----------|----------------|
|01-JAN-22 |3          |0               |
|02-JAN-22 |2          |1               |
|03-JAN-22 |1          |2               |
