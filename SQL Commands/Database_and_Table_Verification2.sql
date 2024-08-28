SELECT * FROM date;

SELECT sales.transactions.*, sales.date.* 
FROM sales.transactions INNER JOIN sales.date 
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020;

SELECT SUM(sales.transactions.sales_amount) 
FROM sales.transactions INNER JOIN sales.date 
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020
AND sales.transactions.market_code = 'Mark001';

SELECT DISTINCT product_code 
FROM sales.transactions
WHERE market_code = 'Mark001';

SELECT DISTINCT(transactions.currency) FROM transactions;