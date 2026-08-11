/* Write your T-SQL query statement below */
SELECT sell_date ,
COUNT(DISTINCT product) AS num_sold,
STRING_AGG( product, ',') WITHIN GROUP (ORDER BY product) as products
from (SELECT DISTINCT sell_date, product
FROM Activities) as a
GROUP BY sell_date