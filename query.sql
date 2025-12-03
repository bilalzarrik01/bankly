INSERT INTO customers (full_name, email, phone)
VALUES ('ahmed test', 'ahmed@test.com', '0600000000');

UPDATE customers
SET phone = '0612345678'
WHERE customer_id = 1;

SELECT * FROM customers;

SELECT full_name, email FROM customers;

SELECT * FROM accounts;

SELECT account_number FROM accounts;