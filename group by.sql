SELECT * FROM dim_product;

-- Group By

-- -- The manager wants to know the average product price for each category.

SELECT 
Avg(unit_price) AS Avg_price,
category
FROM dim_product
GROUP BY category;

SELECT 
AVG(unit_price) AS Avg_price,
SUM(unit_price) AS Total_price
FROM dim_product
GROUP BY category;

-- The business wants to know the number of products available under each brand.
SELECT 
brand,
COUNT(unit_price) AS number_of_product
FROM dim_product
GROUP BY brand;

-- The manager wants to know the total value/price of products in each category.
SELECT 
category,
SUM(unit_price) AS total_value
FROM dim_product
GROUP BY category;

-- The business wants to know the highest product price for each brand.
SELECT 
brand,
MAX (unit_price) AS total_value
FROM dim_product
GROUP BY brand;

-- The business wants to know the lowest product price in each category.
SELECT 
category,
MIN(unit_price) AS total_value
FROM dim_product
GROUP BY category;

