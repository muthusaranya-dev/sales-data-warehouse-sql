SELECT * FROM dim_product

-- sorting
SELECT *
FROM dim_product
ORDER BY product_name DESC;

SELECT *
FROM dim_product
ORDER BY unit_price;

SELECT 
product_id,
product_name AS 'product name'
FROM dim_product
ORDER BY unit_price;

SELECT
AVG(unit_price)
FROM dim_product
ORDER BY  unit_price

-- 1)Requirement: The business wants to see the most expensive products first.
-- Display all product details.
-- Sort the products by unit_price.
-- Highest price should appear first.

SELECT *
FROM dim_product
ORDER BY unit_price DESC;

-- 2) Two-column sorting
-- The business wants the product list organized like this:
-- First, sort by category alphabetically (A → Z).
-- Within each category, show the most expensive product first.

SELECT 
product_id,
product_name,
category
FROM dim_product
ORDER BY category ASC,
unit_price DESC;

-- 3)The business wants to see the newest products first. If two products have the same launch date, the cheaper product should come first.
SELECT 
unit_price,
launch_date
FROM dim_product
ORDER BY 
launch_date DESC,
unit_price ASC;

-- 4)Highest price first. If two products have the same price, sort their product names alphabetically A → Z.
SELECT 
product_name,
unit_price
FROM dim_product
ORDER BY 
unit_price DESC,
product_name ASC;

-- The business wants to see the oldest products first. If multiple products were launched on the same date, show the most expensive product first.
SELECT 
unit_price,
launch_date
FROM dim_product
ORDER BY 
launch_date ASC,
unit_price DESC;