Quiz LIMIT
SELECT occurred_at, account_id, channel
  FROM web_events
 LIMIT 15;


Quiz ORDER BY
1. SELECT id, occurred_at, total_amt_usd
   FROM orders
   ORDER BY occurred_at
   LIMIT 10
   
2. SELECT id, account_id, total_amt_usd
   FROM orders
   LIMIT 5
   ORDER BY total_amt_usd DESC
   
3. SELECT id, account_id, total_amt_usd
   FROM orders
   ORDER BY total_amt_usd
   LIMIT 20

Quiz ORDER BY
1. SELECT id, account_id, total_amt_usd
   FROM orders
   ORDER BY account_id, total_amt_usd DESC;

2. SELECT id, account_id, total_amt_usd
   FROM orders
   ORDER BY total_amt_usd DESC, account_id;

Quiz: WHERE
1. SELECT *
     FROM orders
     WHERE gloss_amt_usd >= 1000
     LIMIT 5
     
2. SELECT *
     FROM orders
     WHERE total_amt_usd < 500
     LIMIT 10

Quiz: WHERE with Non-Numeric



   

