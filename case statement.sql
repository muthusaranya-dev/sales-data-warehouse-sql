SELECT * FROM dim_product;
-- The manager wants to see all products where the unit price is greater than 500
SELECT *
FROM
dim_product
WHERE unit_price>500;

-- The manager wants all products that belong to Electronics category.
SELECT * 
FROM
dim_product
WHERE category='Electronics';

-- The manager wants products that:belong to Electronics AND have a unit_price greater than 500
SELECT * 
FROM
dim_product
WHERE category='Electronics' AND unit_price>500;

-- The manager wants to classify products based on unit_price:Price greater than 500 → 'Expensive' Otherwise → 'Affordable'
SELECT *,
    CASE
        WHEN unit_price > 500 THEN 'Expensive'
        ELSE 'Affordable'
    END AS price_category
FROM dim_product;

-- Classify products into 3 levels:unit_price > 700 → 'High' unit_price >= 300 → 'Medium' Otherwise → 'Low'
SELECT *,
  CASE
  WHEN unit_price> 700 THEN 'High'
  WHEN unit_price >=300 THEN 'Medium'
  ELSE 'Low'
  END AS price_category
  FROM dim_product;
  