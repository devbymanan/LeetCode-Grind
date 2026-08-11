/* Write your T-SQL query statement below */
SELECT u.name as NAME,
SUM(t.amount) as BALANCE
FROM Users as u
JOIN Transactions as t
ON u.account = t.account
GROUP BY u.name
HAVING SUM(t.amount) > 10000