CREATE TABLE advisors (
  advisor_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100),
  email VARCHAR(100)
);

INSERT INTO advisors (advisor_id, full_name, email) VALUES
(1, 'bilal zarrik', 'bilalzarrik11@gmail.com'),
(2, 'adama traoiri', 'adak11@gmail.com'),
(3, 'masoud ozile', 'mams11@gmail.com');

CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100),
  email VARCHAR(100),
  phone VARCHAR(20),
  registration_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO customers (customer_id, full_name, email, phone, registration_date) VALUES
(1,'bilal zarrik','bilalzarrik11@gmail.com','1258745625','2025-12-01 14:12:14'),
(2,'lionel messi','leomessi11@gmail.com','1998745625','2025-12-01 15:22:38'),
(3,'trend alexander arnold','ttarnold66@gmail.com','1668745625','2025-12-01 15:24:14'),
(4,'nabil lmkeasse','nbilelmk1@gmail.com','199874785','2025-12-01 15:24:54'),
(5,'pedri gonzales','pedripedri67@gmail.com','196664785','2025-12-01 15:25:54'),
(6,'harry potter','magician1@gmail.com','199999885','2025-12-01 15:28:00'),
(7,'jude bellingham','belli5@gmail.com','195554885','2025-12-01 15:29:19');

