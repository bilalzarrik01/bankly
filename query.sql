INSERT INTO customers (full_name, email, phone)
VALUES ('ahmed test', 'ahmed@test.com', '0600000000');

UPDATE customers
SET phone = '0612345678'
WHERE customer_id = 1;

SELECT * FROM customers;

SELECT full_name, email FROM customers;

SELECT * FROM accounts;

SELECT account_number FROM accounts;


SELECT * FROM transactions;

SELECT * FROM accounts
WHERE balance > 10000;

SELECT * FROM accounts
WHERE balance <= 0;

SELECT * FROM transactions
WHERE transaction_type = 'debit';

SELECT * FROM transactions
WHERE transaction_type = 'credit';

SELECT * FROM transactions
WHERE accountid = 1;

SELECT c.*
FROM customers c
JOIN accounts a ON c.customer_id = a.customerid
WHERE a.advisorid = 2;

SELECT * FROM accounts
WHERE account_type = 'Savings';

SELECT * FROM transactions
WHERE amount >= 500;

SELECT * FROM transactions
WHERE amount BETWEEN 100 AND 1000;

SELECT * FROM accounts
WHERE customerid = 1;

SELECT * FROM accounts
ORDER BY balance ASC;