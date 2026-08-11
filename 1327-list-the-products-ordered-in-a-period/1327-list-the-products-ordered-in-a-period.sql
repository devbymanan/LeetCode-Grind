/* Write your T-SQL query statement below */
SELECT p.product_name, SUM(o.unit) as unit
FROM Products as p
join Orders as o
on p.product_id =o.product_id
WHERE o.order_date >= '2020-02-01' AND o.order_date < '2020-03-01'
GROUP BY p.product_name
having SUM(o.unit) >=100