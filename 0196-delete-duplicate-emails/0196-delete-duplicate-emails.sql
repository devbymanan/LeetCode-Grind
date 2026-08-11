/* Write your T-SQL query statement below */
DELETE p
FROM person as p
JOIN Person as p1
ON p.email =p1.email
where p.id > p1.id
