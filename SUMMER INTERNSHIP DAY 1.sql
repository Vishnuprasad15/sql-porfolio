CREATE TABLE customers (
  id INTEGER PRIMARY KEY,
  firstname TEXT,
  lastname TEXT,
  address varchar
);

-- Insert some values
INSERT INTO customers VALUES (1, 'Ryan', 'reynolds','cbe');
INSERT INTO customers VALUES (2, 'Joanna', 'goldberg','chennai');

SELECT * FROM customers;

CREATE TABLE products (
  id INTEGER PRIMARY KEY,
  Pro TEXT,
  cat TEXT
);

-- Insert some values
INSERT INTO products VALUES (1, 'Product 1', 'Category 1');
INSERT INTO products VALUES (2, 'Product 2', 'Category 2');

SELECT * FROM products;

CREATE TABLE orders (
  id INTEGER NOT NULL,
  order_num INTEGER,
  customer_id INTEGER,
  product_id INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (customer_id) REFERENCES customers (id),
  FOREIGN KEY (product_id) REFERENCES products (id)
);

INSERT INTO orders VALUES (1, 123, 1, 2);

SELECT orders.order_num,customers.firstname,customers.lastname,customers.address
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.id;

SELECT orders.order_num,products.pro,products.cat
from orders
INNER JOIN products
ON orders.product_id = products.id;

SELECT * FROM orders;
