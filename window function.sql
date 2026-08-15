SELECT * FROM dim_product;
SELECT
    product_name,
    unit_price,
    ROW_NUMBER() OVER (ORDER BY unit_price DESC) AS row_num
FROM dim_product;

-- The manager wants to rank all products from the lowest price to the highest price using ROW_NUMBER()
SELECT 
product_name,
unit_price,
RANK() OVER (ORDER BY unit_price DESC) AS row_num
FROM dim_product;

-- The manager wants to rank all products from the lowest price to the highest price using ROW_NUMBER().
SELECT *,
ROW_NUMBER() OVER (ORDER BY unit_price DESC) AS row_num
FROM dim_product;
