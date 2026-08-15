CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_key INT,
    product_key INT,
    order_date DATE,
    quantity INT,
    total_amount DECIMAL(10,2),

    FOREIGN KEY (customer_key) REFERENCES dim_customer(customer_key),
    FOREIGN KEY (product_key) REFERENCES dim_product(product_key)
);
 

INSERT INTO orders VALUES
(1, 1, 5, '2025-01-10', 2, 667.94),
(2, 2, 7, '2025-01-11', 1, 480.06),
(3, 1, 10, '2025-01-15', 3, 2267.94),
(4, 3, 4, '2025-01-18', 2, 194.66),
(5, 5, 9, '2025-01-20', 1, 487.22);

-- Find the customer first name, product name, order date, and quantity for every order.
SELECT
    c.first_name,
    o.order_date
FROM orders o
INNER JOIN dim_customer c
    ON o.customer_key = c.customer_key;
    
    -- The manager wants to see the product name and order date for every order.
    SELECT
    p.product_name,
    o.order_date
FROM orders o
INNER JOIN dim_product p
 ON p.product_key=o.product_key
