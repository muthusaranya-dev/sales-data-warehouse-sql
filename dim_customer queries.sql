USE sale;
Select * From dim_customer;
-- Limit
Select customer_id,email
From dim_customer
Limit 100;

-- where condition
Select * 
From dim_customer
Where (gender='F') AND ((country='France') OR (join_date>'2021-05-17'));

-- Like
Select * From dim_customer
Where first_name LIKE 'S%';

Select * From dim_customer
Where first_name LIKE 'S%A';

-- Find all customers who joined after January 1, 2024
Select*
FROM dim_customer
WHERE join_date > '2024-01-01';

-- Find customers who joined before January 1, 2023
Select*
FROM dim_customer
WHERE join_date < '2023-01-01';

-- Find customers who joined between January 1, 2023 and December 31, 2023
Select * 
From dim_customer
WHERE join_date BETWEEN  '2023-01-01' AND '2023-12-31';

-- Find customers who joined between 2022-01-01 and 2022-12-31
Select * 
From dim_customer
Where join_date BETWEEN '2022-01-01' AND '2022-12-31';

-- Find all female customers who joined during 2022
Select * 
From dim_customer
Where gender='F' AND join_date BETWEEN '2022-01-01' AND '2022-12-31';

-- Show me all female customers from Canada who joined after January 1, 2023
Select * 
From dim_customer
Where (gender='F') AND (country='Canada') AND (join_date>'2023-01-01');

-- Find customers from either Canada OR France, who joined after 2023-01-01
Select * 
From dim_customer
Where (gender='F') AND ((country='Canada' OR country = 'France') AND (join_date>'2023-01-01'));

SELECT *
FROM dim_customer
WHERE country IN ('Canada', 'France')
  AND join_date > '2023-01-01';
  
  -- Find all customers whose first name starts with S and who joined after January 1, 2023.
  SELECT *
FROM dim_customer
WHERE first_name LIKE 'S%' AND join_date>'2023-01-01';