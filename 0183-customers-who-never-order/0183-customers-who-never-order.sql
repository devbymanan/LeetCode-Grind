/* Write your T-SQL query statement below */
/* Write your T-SQL query statement below */
SELECT name as Customers
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.id = o.customerID
where o.customerID IS null