/**
 * @author [Jai Miles]
 * @email [jaimiles23@gmail.com]
 * @create date 2020-06-14 13:47:55
 * @modify date 2020-06-14 13:47:55
 * @desc [
      Solution to Challenge 9: [Customer's Orders](https://www.khanacademy.org/computing/computer-programming/sql/relational-queries-in-sql/pc/challenge-customers-orders)

      Step 1: Show customer names, emails, and their order item and prices. Show all customers.

      Step 2: Show customer name, email, and money spent. Order descending money spent.

      NOTES:
      - Use LEFT OUTER JOIN to display all customers, regardless of items purchased.
 ]
 */


CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);

INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);


/* Step 1 */
SELECT customers.name, customers.email,
orders.item, orders.price
FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id;


/* Step 2 */
SELECT customers.name, customers.email, 
SUM(orders.price) AS total_amount
FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id

GROUP BY customers.name
ORDER BY total_amount DESC;