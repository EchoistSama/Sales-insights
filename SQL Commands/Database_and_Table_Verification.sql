SELECT * FROM transactions;

SELECT COUNT(*) 
FROM sales.transactions
WHERE sales_amount <= 0;

SELECT DISTINCT(transactions.currency) FROM transactions;

SELECT COUNT(*)
FROM transactions
WHERE currency = 'INR\r';


SELECT COUNT(*)
FROM transactions
WHERE currency = 'INR';

SELECT COUNT(*)
FROM transactions
WHERE currency = 'USD';

SELECT COUNT(*)
FROM transactions
WHERE currency = 'USD\r';

SELECT * FROM transactions 
WHERE currency = 'USD' OR currency = 'USD\r'

SELECT SUM(transactions.sales_amount) 
FROM transactions INNER JOIN date 
ON transactions.order_date=date.date
WHERE date.year='2020' 
AND transactions.currency='INR' OR transactions.currency='USD';

SELECT SUM(transactions.sales_amount)
FROM transactions INNER JOIN date
ON transactions.order_date = date.date
WHERE date.year = 2019
AND date.month_name = "June"
AND (transactions.currency='INR' or transactions.currency='USD');