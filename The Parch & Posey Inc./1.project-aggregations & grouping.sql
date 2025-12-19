Data Aggregation - MIN & MAX & AVG & MEDIAN

1. When was the earliest order ever placed? Just return a date. 
SELECT MIN(occurred_at) AS earliest_order_date
  FROM orders

2. Try performing the same query as in question 1 without using an aggregation function.
SELECT occurred_at
  FROM orders
ORDER BY occurred_at
  LIMIT 1

3. When did the most recent (latest) web_event occur?
SELECT MAX(occurred_at) AS latest_event_time
  FROM web_events

4. Try to perform the result of the previous query without using an aggregation function.
SELECT occurred_at
  FROM web_events
ORDER BY occurred_at DESC
 LIMIT 1  

5. Find the mean (AVERAGE) amount spent per order on each paper type, as well as the mean amount of each paper type purchased per order. 
   Your final answer should have 6 values - one for each paper type for the average number of sales, as well as the average amount.
SELECT ROUND(AVG(standard_qty), 2) AS standard_num,
       AVG(poster_qty) AS poster_num,
       AVG(gloss_qty) AS gloss_num,
       AVG(standard_amt_usd) AS standard_amt,
       AVG(gloss_amt_usd) AS gloss_amt,
       AVG(poster_amt_usd) AS poster_amt
  FROM orders

6. what is the MEDIAN total_usd spent on all orders?
SELECT AVG(total_amt_usd) AS median_value
# if total number of rows is odd, there is only one middle value,
# if total number of rows is even, there are two middle values whose AVG is the median value
  FROM (
    SELECT total_amt_usd
    FROM orders
    ORDER BY total_amt_usd
    LIMIT 2 - (SELECT COUNT(*) FROM orders) % 2
    OFFSET (SELECT (COUNT(*) - 1) / 2 FROM orders)
) AS sub;
# so, break the steps: 
Sort the data_ ORDER BY
Skip rows until reaching the middle_ OFFSET_calculates where the middle starts.
Take 1 or 2 middle values
Average them
Output one number → the median

7. Get the MEDIAN of total spent on all orders. 
SELECT ROUND(AVG(total), 2) AS median_value
  FROM (
       SELECT total
       FROM orders
       ORDER BY total
       LIMIT 2 - (SELECT COUNT(*) FROM orders) % 2
       OFFSET (SELECT (COUNT(*)-1) / 2 FROM orders)
      ) AS sub
---------------------------------------------------------------------------------------------------------

Data Aggregation - SUM

1. Find the total amount of poster_qty paper ordered in the orders table.

SELECT SUM(poster_qty) AS total_poster_sales
  FROM orders

2. Find the total amount of standard_qty paper ordered in the orders table.

SELECT SUM(standard_qty) AS total_standard_sales
  FROM orders

3. Find the total dollar amount of sales using the total_amt_usd in the orders table.

SELECT SUM(total_amt_usd) AS total_sales_revenue
  FROM orders

4. Find the total amount spent on standard_amt_usd and gloss_amt_usd paper for each order in the orders table. 

SELECT standard_amt_usd + gloss_amt_usd AS total_standard_gloss
  FROM orders

5. Find the standard_amt_usd per unit of standard_qty paper.
SELECT ROUND(SUM(standard_amt_usd) / SUM(standard_qty), 2) AS standard_price_per_unit
  FROM orders

----------------------------------------------------------------------------------------------------------
COUNT & NULLS
If the count result of a column matches the number of rows in a table, there are no nulls in the table. 

