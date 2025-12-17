Aggregation Questions
Use the SQL environment below to find the solution for each of the following questions.

1. Find the total amount of poster_qty paper ordered in the orders table.

SELECT SUM(poster_qty) 
  FROM orders

2. Find the total amount of standard_qty paper ordered in the orders table.

SELECT SUM(standard_qty) 
  FROM orders

3. Find the total dollar amount of sales using the total_amt_usd in the orders table.

SELECT SUM(total_amt_usd) 
  FROM orders

4. Find the total amount spent on standard_amt_usd and gloss_amt_usd paper for each order in the orders table. 

SELECT SUM(standard_amt_usd)
       SUM(gloss_amt_usd)
  FROM orders

5. Find the standard_amt_usd per unit of standard_qty paper.
SELECT SUM(standard_amt_usd) / SUM(standard_qty) AS standard_qty paper per unit
  FROM orders

----------------------------------------------------------------------------------------------------------
COUNT & NULLS
If the count result of a column matches the number of rows in a table, there are no nulls in the table. 

